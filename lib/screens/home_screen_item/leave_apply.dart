import 'package:datn_test/constants/ui_constants.dart';
import 'package:datn_test/model/class.dart';
import 'package:datn_test/model/leave_apply.dart';
import 'package:datn_test/screens/home_screen_item/class_Permission_form.dart';
import 'package:datn_test/screens/home_screen_item/leave_apply_item.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:datn_test/widgets/class_item.dart';
import 'package:flutter/material.dart';

class LeaveApply extends StatefulWidget {
  LeaveApply({
    Key? key,
  }) : super(key: key);

  @override
  State<LeaveApply> createState() => _LeaveApplyState();
}

class _LeaveApplyState extends State<LeaveApply> {
  List<LeaveApplyModel> listLeaveApply = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    listLeaveApply = await getLeaveApply();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leave Aplly'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PermissionForm()));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: listLeaveApply.length,
          itemBuilder: (context, index) {
            return LeaveApplyItem(
              data: listLeaveApply[index],
            );
          },
        ),
      ),
    );
  }
}
