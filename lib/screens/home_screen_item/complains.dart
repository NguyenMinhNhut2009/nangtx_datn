import 'package:datn_test/model/teacher.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:flutter/material.dart';

class Complaints extends StatefulWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  List<TeacherList> teacherlist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    teacherlist = await getTeacherList();
    print(teacherlist);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Complains'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: teacherlist.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: teacherlist.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    elevation: 4.0,
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            teacherlist[index].name ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "Phone: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                teacherlist[index].phone ?? '',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "Email: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                teacherlist[index].email ?? '',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          // Text(
                          //   teacherlist[index].location ?? '',
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 18.0,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  );
                }));
  }
}
