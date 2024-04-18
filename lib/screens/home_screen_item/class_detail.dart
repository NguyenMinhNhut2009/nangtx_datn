import 'package:datn_test/model/class.dart';
import 'package:datn_test/screens/home_screen_item/pdf_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClassDetailPage extends StatefulWidget {
  final int classId;
  ClassDetailPage({Key? key, required this.classId}) : super(key: key);

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
              attendenceStatus: true,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 2,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: true,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 3,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: true,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 4,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: true,
              document: 'assets/pdf/a.pdf',
            ),
            Class(
              id: 5,
              name: 'Class reading tutorial 1',
              teacher: 'Teacher 1',
              sessions: 12,
              schedule: '13:00 - 15:00 Mon, Wed, Fri',
              imageUrl: 'assets/icons/read.png',
              attendenceStatus: true,
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
                  attendenceStatus: true,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 1,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: true,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 1,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: true,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                    id: 1,
                    name: 'Class reading tutorial 1',
                    teacher: 'Teacher 1',
                    sessions: 12,
                    schedule: '13:00 - 15:00 Mon, Wed, Fri',
                    imageUrl: 'assets/icons/read.png',
                    attendenceStatus: true,
                    document: 'assets/pdf/document.pdf'),
                Class(
                  id: 1,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: true,
                  document: 'assets/pdf/document.pdf',
                ),
                Class(
                  id: 1,
                  name: 'Class reading tutorial 1',
                  teacher: 'Teacher 1',
                  sessions: 12,
                  schedule: '13:00 - 15:00 Mon, Wed, Fri',
                  imageUrl: 'assets/icons/read.png',
                  attendenceStatus: true,
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
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
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
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                    Class(
                      id: 1,
                      name: 'Class reading tutorial 1',
                      teacher: 'Teacher 1',
                      sessions: 12,
                      schedule: '13:00 - 15:00 Mon, Wed, Fri',
                      imageUrl: 'assets/icons/read.png',
                      attendenceStatus: true,
                      document: 'assets/pdf/document.pdf',
                    ),
                  ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Classes'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView.builder(
            itemCount: classDetail.length,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello ${classDetail[index].name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text("${classDetail[index].schedule}"),
                      Text("${classDetail[index].teacher}"),
                      Text(
                          "Lesson ${index + 1}/${classDetail[index].sessions}"),
                      Row(
                        children: [
                          Text("Attendence Status"),
                          Checkbox(
                            value: classDetail[index]
                                .attendenceStatus, // Giá trị của checkbox dựa trên dữ liệu kiểu bool
                            onChanged: null,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PdfViewController(
                                      url:
                                          'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
                                      title: '${classDetail[index].name}',
                                    )),
                          );
                        },
                        child: Text(
                          "Documents After Class",
                          style: TextStyle(
                            decoration:
                                TextDecoration.underline, // Thêm gạch chân
                            decorationColor: Colors.blue, // Màu của gạch chân
                            decorationThickness: 2, // Độ dày của gạch chân
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
