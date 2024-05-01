import 'package:datn_test/model/class.dart';
import 'package:datn_test/screens/home_screen_item/class_Permission_form.dart';
import 'package:datn_test/screens/home_screen_item/pdf_view.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:flutter/material.dart';

class ClassDetailPage extends StatefulWidget {
  final int classId;
  final bool checkPage;
  ClassDetailPage({Key? key, required this.classId, required this.checkPage})
      : super(key: key);

  @override
  State<ClassDetailPage> createState() => _ClassDetailPageState();
}

class _ClassDetailPageState extends State<ClassDetailPage> {
  List<ClassList> classListDetail = [];
  List<Lessons> lessons = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    classListDetail = await getClassDetail(widget.classId);
    if (classListDetail.length != 0) {
      lessons = classListDetail[0].lessons!;
      print(lessons.length);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return classListDetail.length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text('Your Classes Detail'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: ListView.builder(
                itemCount: lessons.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (widget.checkPage == false) {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PermissionForm(
                        //               classInfo: classListDetail[index],
                        //             )));
                      }
                    },
                    child: Card(
                      margin: EdgeInsets.all(8.0),
                      elevation: 4.0,
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${lessons[index].lessonName}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            Text("${classListDetail[0].schedule}"),
                            Text("${classListDetail[0].teacher!.name}"),
                            Text("Lesson: ${index + 1}}"),
                            Row(
                              children: [
                                Text("Attendence Status: " +
                                    "${lessons[index].attendenceStatus != null ? lessons[index].attendenceStatus : "None"}"),
                              ],
                            ),
                            widget.checkPage == true
                                ? lessons[index].documents!.length != 0
                                    ? GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PdfViewController(
                                                      url:
                                                          'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
                                                      title:
                                                          '${lessons[index].documents![0].name}',
                                                    )),
                                          );
                                        },
                                        child: Text(
                                          "Documents After Class",
                                          style: TextStyle(
                                            decoration: TextDecoration
                                                .underline, // Thêm gạch chân
                                            decorationColor: Colors
                                                .blue, // Màu của gạch chân
                                            decorationThickness:
                                                2, // Độ dày của gạch chân
                                          ),
                                        ),
                                      )
                                    : Text(
                                        "Documents After Class",
                                        style: TextStyle(
                                          decoration: TextDecoration
                                              .underline, // Thêm gạch chân
                                          decorationColor:
                                              Colors.blue, // Màu của gạch chân
                                          decorationThickness:
                                              2, // Độ dày của gạch chân
                                        ),
                                      )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  );
                }));
  }
}
