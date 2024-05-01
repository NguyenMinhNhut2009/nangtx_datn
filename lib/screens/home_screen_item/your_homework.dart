import 'package:datn_test/globals.dart';
import 'package:datn_test/model/homework.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:datn_test/widgets/homework_item.dart';
import 'package:flutter/material.dart';

class YourHomework extends StatefulWidget {
  YourHomework({Key? key}) : super(key: key);

  @override
  State<YourHomework> createState() => _YourHomeworkState();
}

class _YourHomeworkState extends State<YourHomework> {
  List<HomeWork> homework = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    homework = await getListHomeWork();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Homeworks'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: homework.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: homework.length,
              itemBuilder: (context, index) {
                return HomeworkListItem(hwInfo: homework[index]);
              },
            ),
    );
  }
}
