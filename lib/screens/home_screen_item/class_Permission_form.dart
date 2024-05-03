import 'package:datn_test/model/class.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:datn_test/globals.dart' as globals;
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PermissionForm extends StatefulWidget {
  const PermissionForm({
    super.key,
  });

  @override
  State<PermissionForm> createState() => _PermissionFormState();
}

class _PermissionFormState extends State<PermissionForm> {
  TextEditingController firstAndLastNameVC = TextEditingController(text: '');
  TextEditingController nameOfSubjectVC = TextEditingController(text: '');
  TextEditingController nameOfInstructorVC = TextEditingController(text: '');
  TextEditingController dateOfTimeVC = TextEditingController(text: '');
  TextEditingController reasonPleaseThink = TextEditingController(text: '');
  int? id;
  List<ClassList> leaveApplyList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstAndLastNameVC.text = globals.fullName;
    loadData();
  }

  loadData() async {
    leaveApplyList = await getLeaveApplyList();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    firstAndLastNameVC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permisson Form'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              padding: EdgeInsets.all(8.0),
              children: [
                Text("First and last name"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  // initialValue: firstAndLastNameVC.text,
                  readOnly: true,
                  enabled:
                      false, // Đặt readOnly thành true để ngăn người dùng chỉnh sửa
                  decoration: InputDecoration(
                      hintText: firstAndLastNameVC.text,
                      // labelText: firstAndLastNameVC.text,
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Name of the lesson"),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    _showItemAndLessonBottomSheet(context);
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextFormField(
                        cursorColor: Colors.black,
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: nameOfInstructorVC.text,
                            border: OutlineInputBorder()),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Căn các phần tử vào giữa
                        crossAxisAlignment:
                            CrossAxisAlignment.center, // Căn theo trục chính
                        children: [
                          Spacer(), // Dùng Spacer để đẩy Icon về phía bên phải
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Reason please think"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  maxLines: 4,
                  controller: reasonPleaseThink,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    alignLabelWithHint: true,
                    labelText: 'Please enter a reason',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black), // Màu viền khi không focus
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black), // Màu viền khi focus
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SafeArea(
              child: GestureDetector(
            onTap: () {
              submit();
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(child: Text("Submit")),
            ),
          ))
        ],
      ),
    );
  }

  void _showItemAndLessonBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
            itemCount: leaveApplyList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () async {
                    Navigator.pop(context);
                    _showLessonsBottomSheet(context, leaveApplyList[index]);
                  },
                  child: Card(
                    margin: EdgeInsets.all(16.0),
                    elevation: 4.0, // Độ nâng của Card
                    child: ListTile(
                      contentPadding: EdgeInsets.only(
                          right: 16.0,
                          left: 16.0,
                          top: 10,
                          bottom: 10), // Padding của ListTile

                      title: Text(
                        leaveApplyList[index].name ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(leaveApplyList[index].teacher!.name ?? ''),
                          ]),
                    ),
                  )
                  //  Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(18),
                  //           topRight: Radius.circular(18),
                  //         )),
                  //     padding: EdgeInsets.all(12.0),
                  //     child: Text(
                  //       leaveApplyList[index].name!,
                  //       style: TextStyle(fontSize: 15),
                  //     )),
                  );
            });
      },
    );
  }

  void _showLessonsBottomSheet(BuildContext context, ClassList data) {
    List<Lessons> lessons = data.lessons!;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView.builder(
            itemCount: lessons.length,
            itemBuilder: (context, index) {
              final lesson = lessons[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    nameOfInstructorVC.text = lesson.lessonName!;
                    id = lesson.id;
                  });
                  print("lesson abc $id");
                  Navigator.pop(context, lesson.id);
                },
                child: Card(
                  margin: EdgeInsets.all(16.0),
                  elevation: 4.0, // Độ nâng của Card
                  child: ListTile(
                    contentPadding: EdgeInsets.only(
                        right: 16.0,
                        left: 16.0,
                        top: 10,
                        bottom: 10), // Padding của ListTile

                    title: Text(
                      lesson.lessonName! ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void submit() async {
    if (reasonPleaseThink.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Reason is not allowed to be empty"),
        ),
      );
      return;
    }
    try {
      await postAttendanceStore(
          globals.userId.toString(), id!.toString(), reasonPleaseThink.text);
      Navigator.pop(context);
    } catch (e) {
      throw (e);
    }
  }
}
