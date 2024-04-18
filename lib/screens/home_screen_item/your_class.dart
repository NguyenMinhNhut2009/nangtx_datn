import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:datn_test/constants/ui_constants.dart';

import '../../model/class.dart';
import '../../widgets/class_item.dart';

class YourClass extends StatelessWidget {
  YourClass({Key? key}) : super(key: key);
  final List<Class> classes = [
    Class(
      id: 1,
      name: 'Class reading tutorial 1',
      teacher: 'Teacher 1',
      sessions: 12,
      schedule: '13:00 - 15:00 Mon, Wed, Fri',
      imageUrl: 'assets/icons/read.png',
      numberOfLessonsStudied: 5,
    ),
    Class(
      id: 2,
      name: 'Class speaking tutorial 1',
      teacher: 'Teacher 2',
      sessions: 12,
      schedule: '13:00 - 15:00 Mon, Wed, Fri',
      imageUrl: 'assets/icons/speak.png',
      numberOfLessonsStudied: 6,
    ),
    Class(
      id: 3,
      name: 'Class writing tutorial 1',
      teacher: 'Teacher 3',
      sessions: 12,
      schedule: '13:00 - 15:00 Mon, Wed, Fri',
      imageUrl: 'assets/icons/write.png',
      numberOfLessonsStudied: 6,
    ),
    Class(
      id: 4,
      name: 'Class listening tutorial 1',
      teacher: 'Teacher 4',
      sessions: 12,
      schedule: '13:00 - 15:00 Mon, Wed, Fri',
      imageUrl: 'assets/icons/listen.png',
      numberOfLessonsStudied: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
        itemCount: classes.length,
        itemBuilder: (context, index) {
          return ClassListItem(classInfo: classes[index]);
        },
      ),
    );
  }
}
