import 'package:datn_test/constants/constants.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:flutter/material.dart';

class ChanegPassWord extends StatefulWidget {
  const ChanegPassWord({super.key});

  @override
  State<ChanegPassWord> createState() => _ChanegPassWordState();
}

class _ChanegPassWordState extends State<ChanegPassWord> {
  TextEditingController passWordVC = TextEditingController(text: '');
  TextEditingController newPassWordVC = TextEditingController(text: '');
  TextEditingController confirmNewPassWordVC = TextEditingController(text: '');
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
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
                Text("Enter your old password"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passWordVC,
                  obscureText: _obscureText,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Enter your new password"),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  controller: newPassWordVC,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    alignLabelWithHint: true,
                    labelText: 'Confirm new password',
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
    // if (nameVC.text == globals.fullName ||
    //     phoneNumberVC.text == globals.phoneNumber) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(""),
    //     ),
    //   );
    // }

    try {
      // await postUserChangeInfo(nameVC.text, phoneNumberVC.text);
      // await getUserInfor();
      Navigator.pop(context);
    } catch (e) {
      throw (e);
    }
  }
}
