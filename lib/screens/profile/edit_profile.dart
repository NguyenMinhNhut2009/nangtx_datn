import 'package:datn_test/navigator.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:flutter/material.dart';
import 'package:datn_test/globals.dart' as globals;
import 'package:http/http.dart';

class EditProfile extends StatefulWidget {
  String? name;
  EditProfile({super.key, this.name});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameVC = TextEditingController(text: '');
  TextEditingController phoneNumberVC = TextEditingController(text: '');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameVC.text = globals.fullName;
    phoneNumberVC.text = globals.phoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Proflie'),
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
                Text("Name"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  controller: nameVC,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    alignLabelWithHint: true,
                    labelText: nameVC.text,
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
                Text("Phone Number"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  controller: phoneNumberVC,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    alignLabelWithHint: true,
                    labelText: nameVC.text,
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
              update();
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(
                  child: Text(
                "Update",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ))
        ],
      ),
    );
  }

  void update() async {
    try {
      final a = await postUserChangeInfo(nameVC.text, phoneNumberVC.text);

      if (a == 1) {
        await getUserInfor();
      }
      if (widget.name != nameVC.text ||
          globals.phoneNumber != phoneNumberVC.text) {
        Navigator.pop(context, nameVC.text);
      }
    } catch (e) {
      throw (e);
    }
  }
}
