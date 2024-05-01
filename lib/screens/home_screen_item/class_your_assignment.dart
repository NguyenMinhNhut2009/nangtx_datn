import 'package:datn_test/model/asignment.dart';
import 'package:datn_test/screens/home_screen_item/results.dart';
import 'package:datn_test/screens/login/login_api.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';

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
    print(asignment);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    void check(var opt) {
      if (index == asignment.length - 1) {
        if (asignment[index].answer == asignment[index].question![opt]) {
          score += 1;
          answer = true;
        } else {
          answer = false;
        }
        add_answers(answer);

        // if (GetStorage().read("TotalScore") == null) {
        //   GetStorage().write("TotalScore", score);
        // } else {
        //   int ts = GetStorage().read("TotalScore") + score;
        //   GetStorage().write("TotalScore", ts);
        // }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ResultsScreen(score, asignment.length)),
        );
      } else {
        if (asignment[index].answer == asignment[index].option![opt]) {
          score += 1;
          answer = true;
        } else {
          // if (score > 0) {
          //   score -= 5;
          // }
          answer = false;
        }
        add_answers(answer);

        setState(() {
          index += 1;
          // _controller.restart();
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Assignment'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: asignment.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: double.infinity,
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          child: Row(children: [
                            Text(
                              "Questions",
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
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(5),
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(children: [
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
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(5),
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () => setState(() {
                                          check(0);
                                        }),
                                    child: Text(
                                      asignment[index].option![0],
                                      style: TextStyle(fontSize: 20),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(5),
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () => check(1),
                                    child: Text(
                                      asignment[index].option![1],
                                      style: TextStyle(fontSize: 20),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(5),
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () => check(2),
                                    child: Text(
                                      asignment[index].option![2],
                                      style: TextStyle(fontSize: 20),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(5),
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () => check(3),
                                    child: Text(
                                      asignment[index].option![3],
                                      style: TextStyle(fontSize: 20),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
