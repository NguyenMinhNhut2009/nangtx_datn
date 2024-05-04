import 'package:datn_test/model/asignment.dart';
import 'package:datn_test/screens/home_screen_item/results.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:flutter/material.dart';
import 'package:datn_test/globals.dart' as globals;
import 'package:flutter/widgets.dart';

class YourAssignemt extends StatefulWidget {
  final int id;
  const YourAssignemt({super.key, required this.id});

  @override
  State<YourAssignemt> createState() => _YourAssignemtState();
}

class _YourAssignemtState extends State<YourAssignemt> {
  int index = 0;
  int score = 0;

  _YourAssignemtState() {
    clear_answers();
    index = 0;
    score = 0;
    // _controller.restart();
  }

  bool answer = false;
  @override
  List<Question> asignment = [];

  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
    score = 0;
    answer = false;
    loadData();
  }

  loadData() async {
    asignment = await getListQuestion(widget.id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    void check(var opt) async {
      if (index == asignment.length - 1) {
        if (asignment[index].answer == asignment[index].question![opt]) {
          score += 1;
          answer = true;
        } else {
          answer = false;
        }
        add_answers(answer);

        postHomeWorkResultStore(globals.userId.toString(), widget.id.toString(),
            score.toString(), asignment.length.toString());
        Navigator.pop(context);
      } else {
        if (asignment[index].answer == asignment[index].option![opt]) {
          score += 1;
          answer = true;
        } else {
          answer = false;
        }
        add_answers(answer);
        setState(() {
          index += 1;
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Your Assignment',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            _showExitDialog(context);
          },
        ),
      ),
      body: asignment.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: Expanded(
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        child: Row(children: [
                          Text(
                            "Questions:",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Text(
                            "${index + 1} / ${asignment.length}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                      ),
                      Divider(
                        color: Colors.grey.shade700,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: ListView(children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              child: Text(
                                asignment[index].question!,
                                style: TextStyle(fontSize: 24),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              color: Colors.white,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () => setState(() {
                                        check(0);
                                      }),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  child: Text(
                                    "A: ${asignment[index].option![0]}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                            Container(
                              color: Colors.white,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () => check(1),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  child: Text(
                                    "B: ${asignment[index].option![1]}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                            Container(
                              color: Colors.white,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () => check(2),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  child: Text(
                                    "C: ${asignment[index].option![2]}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                            Container(
                              color: Colors.white,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () => check(3),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  child: Text(
                                    "D: ${asignment[index].option![3]}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                          ]),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _showExitDialog(context);
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Future<void> _showExitDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible:
          false, // Không cho phép người dùng đóng cửa sổ bằng cách nhấn bên ngoài
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Submit confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to submit your assignment?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                // Đóng cửa sổ thoát
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                postHomeWorkResultStore(
                    globals.userId.toString(),
                    widget.id.toString(),
                    score.toString(),
                    asignment.length.toString());
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
