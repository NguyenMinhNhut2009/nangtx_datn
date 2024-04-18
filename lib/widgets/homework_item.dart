import 'package:datn_test/screens/home_screen_item/class_your_assignment.dart';
import 'package:flutter/material.dart';

import '../model/class.dart';
import '../model/homework.dart';

class HomeworkListItem extends StatelessWidget {
  final Homework hwInfo;

  HomeworkListItem({required this.hwInfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4.0,
      child: ListTile(
        contentPadding: EdgeInsets.only(
            right: 16.0,
            left: 16.0,
            top: 10,
            bottom: 10), // Padding của ListTile
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 1, color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.2),
                blurRadius: 12,
                spreadRadius: 8,
              )
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(hwInfo.imageUrl!),
            ),
          ),
        ),
        title: Text(
          hwInfo.assignmentName!,
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
            Row(
              children: [
                Icon(
                  Icons.class_outlined,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(hwInfo.nameClass!),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(hwInfo.teacher!),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.quiz,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("${hwInfo.numberOfQuestion!}"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.schedule_rounded,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(hwInfo.dueDate!),
              ],
            ),
          ],
        ),
        trailing: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => YourAssignemt(
                              id: hwInfo.id!,
                            )));
              },
              child: Ink(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(0.1), // Màu nền khi hover
                ),
                child: Icon(Icons.arrow_forward_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
