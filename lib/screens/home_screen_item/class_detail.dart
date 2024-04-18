import 'package:datn_test/model/class.dart';
import 'package:datn_test/screens/home_screen_item/class_Permission_form.dart';
import 'package:datn_test/screens/home_screen_item/pdf_view.dart';
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
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    List<Class>? classDetail = widget.classId == 1
        ? [
            Class(
              id: 1,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: 0,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 2,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: 0,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 3,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: 0,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 4,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: 0,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 5,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: 0,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 6,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: null,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 7,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: null,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 8,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: null,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 9,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: null,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 10,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: null,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 11,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: null,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 12,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: null,
              document: 'assets/pdf/a.pdf',
            ),
          ]
        : widget.classId == 2
            ? [
                Class(
                  id: 1,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: 0,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 2,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: 0,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 3,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: 0,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                    id: 4,
                    name: 'Class reading tutorial 1',
                    teacher: 'Teacher 1',
                    sessions: 12,
                    schedule: '13:00 - 15:00 Mon, Wed, Fri',
                    imageUrl: 'assets/icons/read.png',
                    attendenceStatus: 0,
                    document: 'assets/pdf/document.pdf'),
                Class(
                  id: 5,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: 0,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 6,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: 0,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 7,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: null,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 8,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: null,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 9,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: null,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 10,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: null,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 11,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: null,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 12,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: null,
                  document: 'assets/pdf/document.pdf',
                ),
              ]
            : widget.classId == 3
                ? [
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 2,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 3,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 4,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 5,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 6,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 1,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 7,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 8,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 9,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 10,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 11,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 12,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                  ]
                : [
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 2,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 3,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 4,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: 0,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 5,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 6,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 7,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 8,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 9,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 10,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 11,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 12,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: null,
                      document: 'assets/pdf/document.pdf',
                    ),
                  ];
    List<Class> classDetailNew = widget.checkPage == false
        ? classDetail.where((item) => item.attendenceStatus == null).toList()
        : classDetail.where((item) => item.attendenceStatus != null).toList();
    return Scaffold(
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
            itemCount: classDetailNew.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (widget.checkPage == false) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PermissionForm(
                                  classInfo: classDetailNew[index],
                                )));
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
                          "${classDetailNew[index].name}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Text("${classDetailNew[index].schedule}"),
                        Text("${classDetailNew[index].teacher}"),
                        Text("Lesson: ${classDetailNew[index].sessions}"),
                        Row(
                          children: [
                            Text("Attendence Status: " +
                                "${classDetailNew[index].attendenceStatus != null ? classDetailNew[index].attendenceStatus == 0 ? "Attendance" : classDetail[index].attendenceStatus == 1 ? "Authorized absence" : "Absence without permission" : "None"}"),
                            // Checkbox(
                            //   value: classDetail[index]
                            //       .attendenceStatus, // Giá trị của checkbox dựa trên dữ liệu kiểu bool
                            //   onChanged: null,
                            // ),
                          ],
                        ),
                        widget.checkPage == true
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PdfViewController(
                                              url:
                                                  'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
                                              title:
                                                  '${classDetail[index].name}',
                                            )),
                                  );
                                },
                                child: Text(
                                  "Documents After Class",
                                  style: TextStyle(
                                    decoration: TextDecoration
                                        .underline, // Thêm gạch chân
                                    decorationColor:
                                        Colors.blue, // Màu của gạch chân
                                    decorationThickness:
                                        2, // Độ dày của gạch chân
                                  ),
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
