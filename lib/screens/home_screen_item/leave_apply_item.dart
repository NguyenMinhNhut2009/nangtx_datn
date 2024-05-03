import 'package:datn_test/model/leave_apply.dart';
import 'package:flutter/material.dart';

class LeaveApplyItem extends StatelessWidget {
  final LeaveApplyModel data;
  const LeaveApplyItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4.0, // Độ nâng của Card
      child: ListTile(
        contentPadding: EdgeInsets.only(
            right: 16.0,
            left: 16.0,
            top: 10,
            bottom: 10), // Padding của ListTile

        title: Text(
          data.classroom!.name ?? '',
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
            Text(data.lessonName ?? ''),
            SizedBox(
              height: 5,
            ),
            Text(data.reason ?? ''),
          ],
        ),
      ),
    );
  }
}
