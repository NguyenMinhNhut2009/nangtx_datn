import 'package:datn_test/globals.dart';
import 'package:datn_test/model/homework.dart';
import 'package:datn_test/widgets/homework_item.dart';
import 'package:flutter/material.dart';

class YourHomework extends StatelessWidget {
  YourHomework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Homework> homeWorks = [
      Homework(
        id: 1,
        assignmentName: 'Your Homeworks 1',
        nameClass: 'Class reading tutorial 1',
        teacher: 'Teacher 1',
        dueDate: '13:00 - 15:00 Mon, Wed, Fri',
        time: '',
        imageUrl: 'assets/icons/read.png',
        numberOfQuestion: 10,
      ),
      Homework(
        id: 2,
        assignmentName: 'Your Homeworks 2',
        nameClass: 'Class reading tutorial 1',
        teacher: 'Teacher 2',
        dueDate: '13:00 - 15:00 Mon, Wed, Fri',
        time: '',
        imageUrl: 'assets/icons/read.png',
        numberOfQuestion: 7,
      ),
      Homework(
        id: 3,
        assignmentName: 'Your Homeworks 3',
        nameClass: 'Class reading tutorial 1',
        teacher: 'Teacher 3',
        dueDate: '13:00 - 15:00 Mon, Wed, Fri',
        time: '',
        imageUrl: 'assets/icons/read.png',
        numberOfQuestion: 5,
      ),
      Homework(
        id: 4,
        assignmentName: 'Your Homeworks 4',
        nameClass: 'Class reading tutorial 1',
        teacher: 'Teacher 4',
        dueDate: '13:00 - 15:00 Mon, Wed, Fri',
        time: '',
        imageUrl: 'assets/icons/read.png',
        numberOfQuestion: 15,
      ),
      Homework(
        id: 5,
        assignmentName: 'Your Homeworks 5',
        nameClass: 'Class speaking tutorial 1',
        teacher: 'Teacher 1',
        dueDate: '13:00 - 15:00 Mon, Wed, Fri',
        time: '',
        imageUrl: 'assets/icons/read.png',
        numberOfQuestion: 20,
      ),
    ];
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
      body: ListView.builder(
        itemCount: homeWorks.length,
        itemBuilder: (context, index) {
          return HomeworkListItem(hwInfo: homeWorks[index]);
        },
      ),
    );
  }
}
