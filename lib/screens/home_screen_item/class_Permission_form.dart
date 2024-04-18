import 'package:datn_test/model/class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PermissionForm extends StatefulWidget {
  final Class classInfo;
  const PermissionForm({super.key, required this.classInfo});

  @override
  State<PermissionForm> createState() => _PermissionFormState();
}

class _PermissionFormState extends State<PermissionForm> {
  TextEditingController firstAndLastNameVC = TextEditingController(text: '');
  TextEditingController nameOfSubjectVC = TextEditingController(text: '');
  TextEditingController nameOfInstructorVC = TextEditingController(text: '');
  TextEditingController dateOfTimeVC = TextEditingController(text: '');
  TextEditingController reasonPleaseThink = TextEditingController(text: '');
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstAndLastNameVC.text = "Nguyen Van A";
    nameOfSubjectVC.text = widget.classInfo.name;
    nameOfInstructorVC.text = widget.classInfo.teacher;
    dateOfTimeVC.text = widget.classInfo.schedule;
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
                  // initialValue: firstAndLastNameVC.text,
                  readOnly: true,
                  enabled:
                      false, // Đặt readOnly thành true để ngăn người dùng chỉnh sửa
                  decoration: InputDecoration(
                      hintText: firstAndLastNameVC.text,
                      // labelText: firstAndLastNameVC.text,
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Name of Subject"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  // initialValue: firstAndLastNameVC.text,
                  readOnly: true,
                  enabled:
                      false, // Đặt readOnly thành true để ngăn người dùng chỉnh sửa
                  decoration: InputDecoration(
                      hintText: nameOfSubjectVC.text,
                      // labelText: firstAndLastNameVC.text,
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Name of Instructor"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  // initialValue: firstAndLastNameVC.text,
                  readOnly: true,
                  enabled:
                      false, // Đặt readOnly thành true để ngăn người dùng chỉnh sửa
                  decoration: InputDecoration(
                      hintText: nameOfInstructorVC.text,
                      // labelText: firstAndLastNameVC.text,
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Date of Time"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  // initialValue: firstAndLastNameVC.text,
                  readOnly: true,
                  enabled:
                      false, // Đặt readOnly thành true để ngăn người dùng chỉnh sửa
                  decoration: InputDecoration(
                      hintText: dateOfTimeVC.text,
                      // labelText: firstAndLastNameVC.text,
                      border: OutlineInputBorder()),
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
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelText: 'Please enter a reason',
                      border: OutlineInputBorder()),
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
              Navigator.pop(context);
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
}
