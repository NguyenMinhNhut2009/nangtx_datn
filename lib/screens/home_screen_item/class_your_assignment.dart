import 'package:datn_test/model/asignment.dart';
import 'package:datn_test/screens/home_screen_item/results.dart';
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
  // final CountdownController _controller =
  //     new CountdownController(autoStart: true);
  // final int maxIndex = asignment.length;

  _YourAssignemtState() {
    clear_answers();
    index = 0;
    score = 0;
    // _controller.restart();
  }

  @override
  Widget build(BuildContext context) {
    bool answer = false;

    initState() {
      index = 0;
      score = 0;
      answer = false;
      // _controller.restart();
    }

    List<Asignment> asignment = widget.id == 1
        ? [
            Asignment(
                answer: "JavaScript Object Notation",
                note: "JSON stands for JavaScript Object Notation.",
                option: [
                  "JavaScript Object Notation",
                  "Java Object Notation",
                  "JavaScript Object Normalization",
                  "JavaScript Object-Oriented Notation"
                ],
                questions: "JSON stands for _______."),
            Asignment(
                answer: "text format",
                note:
                    "JSON is a text format for storing and transporting data.",
                option: [
                  "xml format",
                  "text format",
                  "JavaScript",
                  "php format"
                ],
                questions: "JSON stands for _______."),
            Asignment(
              answer: "JavaScript",
              note: "The JSON syntax is a subset of the JavaScript syntax.",
              option: ["Ajax", "Php", "HTML", "JavaScript"],
              questions: "The JSON syntax is a subset of the _____ syntax.",
            ),
            Asignment(
              answer: "Douglas Crockford",
              note: "Douglas Crockford is the creator of JSON.",
              option: [
                "Alvin Alexander",
                "Rasmus Lerdorf",
                "Douglas Crockford",
                "Jesse James Garrett"
              ],
              questions: "Who is the creator of JSON?",
            ),
            Asignment(
              answer: "Commas",
              note: "In the JSON syntax, data is separated by commas.",
              option: ["Semicolons", "Colons", "Commas", "Hyper"],
              questions: "In the JSON syntax, data is separated by _____.",
            ),
            Asignment(
              answer: "Square brackets",
              note:
                  "In the JSON syntax, array is written within in square brackets.",
              option: [
                "Square brackets",
                "Curley braces",
                "Paratheses",
                "None of the above"
              ],
              questions: "In the JSON syntax, array is written within in ____.",
            ),
            Asignment(
              answer: "JSON doesn't support the comments",
              note:
                  "JSON doesn't support the comments. But you can add an extra attribute to write the comments.",
              option: [
                "//",
                "/*\u2026*/",
                "<!-- \u2026 -->",
                "JSON doesn't support the comments"
              ],
              questions:
                  "Which is the correct symbol to insert a comment in JSON?",
            ),
            Asignment(
              answer: "JSON doesn't support the comments",
              note: "In the JSON syntax, data is in name/value pairs.",
              option: [
                "class/object",
                "name/value",
                "datatype/variable",
                "value/="
              ],
              questions: "In the JSON syntax, data is in ____ pairs.",
            ),
            Asignment(
              answer: "\"name\" : \"value\"",
              note:
                  "The correct syntax of writing JSON name/value pair, where the value is of string type: \"name\" : \"value\"",
              option: [
                "\"name\" : \"value\"",
                "\"name\" : value",
                "\"name\" : 'value'",
                "'name' : 'value'"
              ],
              questions:
                  "What is the correct syntax of writing JSON name/value pair, where the value is of string type?",
            ),
            Asignment(
              answer: ".json",
              note: "The file type for JSON files is \".json\"",
              option: [".jsn", ".js", ".json", ".jso"],
              questions: "What is the file type for JSON files?",
            ),
          ]
        : widget.id == 2
            ? [
                Asignment(
                    answer: "JavaScript Object Notation",
                    note: "JSON stands for JavaScript Object Notation.",
                    option: [
                      "JavaScript Object Notation",
                      "Java Object Notation",
                      "JavaScript Object Normalization",
                      "JavaScript Object-Oriented Notation"
                    ],
                    questions: "JSON stands for _______."),
                Asignment(
                    answer: "text format",
                    note:
                        "JSON is a text format for storing and transporting data.",
                    option: [
                      "xml format",
                      "text format",
                      "JavaScript",
                      "php format"
                    ],
                    questions: "JSON stands for _______."),
                Asignment(
                  answer: "JavaScript",
                  note: "The JSON syntax is a subset of the JavaScript syntax.",
                  option: ["Ajax", "Php", "HTML", "JavaScript"],
                  questions: "The JSON syntax is a subset of the _____ syntax.",
                ),
                Asignment(
                  answer: "Douglas Crockford",
                  note: "Douglas Crockford is the creator of JSON.",
                  option: [
                    "Alvin Alexander",
                    "Rasmus Lerdorf",
                    "Douglas Crockford",
                    "Jesse James Garrett"
                  ],
                  questions: "Who is the creator of JSON?",
                ),
                Asignment(
                  answer: "Commas",
                  note: "In the JSON syntax, data is separated by commas.",
                  option: ["Semicolons", "Colons", "Commas", "Hyper"],
                  questions: "In the JSON syntax, data is separated by _____.",
                ),
                Asignment(
                  answer: "Square brackets",
                  note:
                      "In the JSON syntax, array is written within in square brackets.",
                  option: [
                    "Square brackets",
                    "Curley braces",
                    "Paratheses",
                    "None of the above"
                  ],
                  questions:
                      "In the JSON syntax, array is written within in ____.",
                ),
                Asignment(
                  answer: "JSON doesn't support the comments",
                  note:
                      "JSON doesn't support the comments. But you can add an extra attribute to write the comments.",
                  option: [
                    "//",
                    "/*\u2026*/",
                    "<!-- \u2026 -->",
                    "JSON doesn't support the comments"
                  ],
                  questions:
                      "Which is the correct symbol to insert a comment in JSON?",
                ),
              ]
            : widget.id == 3
                ? [
                    Asignment(
                        answer: "JavaScript Object Notation",
                        note: "JSON stands for JavaScript Object Notation.",
                        option: [
                          "JavaScript Object Notation",
                          "Java Object Notation",
                          "JavaScript Object Normalization",
                          "JavaScript Object-Oriented Notation"
                        ],
                        questions: "JSON stands for _______."),
                    Asignment(
                        answer: "text format",
                        note:
                            "JSON is a text format for storing and transporting data.",
                        option: [
                          "xml format",
                          "text format",
                          "JavaScript",
                          "php format"
                        ],
                        questions: "JSON stands for _______."),
                    Asignment(
                      answer: "JavaScript",
                      note:
                          "The JSON syntax is a subset of the JavaScript syntax.",
                      option: ["Ajax", "Php", "HTML", "JavaScript"],
                      questions:
                          "The JSON syntax is a subset of the _____ syntax.",
                    ),
                    Asignment(
                      answer: "Douglas Crockford",
                      note: "Douglas Crockford is the creator of JSON.",
                      option: [
                        "Alvin Alexander",
                        "Rasmus Lerdorf",
                        "Douglas Crockford",
                        "Jesse James Garrett"
                      ],
                      questions: "Who is the creator of JSON?",
                    ),
                    Asignment(
                      answer: "Commas",
                      note: "In the JSON syntax, data is separated by commas.",
                      option: ["Semicolons", "Colons", "Commas", "Hyper"],
                      questions:
                          "In the JSON syntax, data is separated by _____.",
                    ),
                  ]
                : widget.id == 4
                    ? [
                        Asignment(
                            answer: "JavaScript Object Notation",
                            note: "JSON stands for JavaScript Object Notation.",
                            option: [
                              "JavaScript Object Notation",
                              "Java Object Notation",
                              "JavaScript Object Normalization",
                              "JavaScript Object-Oriented Notation"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                            answer: "text format",
                            note:
                                "JSON is a text format for storing and transporting data.",
                            option: [
                              "xml format",
                              "text format",
                              "JavaScript",
                              "php format"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                          answer: "JavaScript",
                          note:
                              "The JSON syntax is a subset of the JavaScript syntax.",
                          option: ["Ajax", "Php", "HTML", "JavaScript"],
                          questions:
                              "The JSON syntax is a subset of the _____ syntax.",
                        ),
                        Asignment(
                          answer: "Douglas Crockford",
                          note: "Douglas Crockford is the creator of JSON.",
                          option: [
                            "Alvin Alexander",
                            "Rasmus Lerdorf",
                            "Douglas Crockford",
                            "Jesse James Garrett"
                          ],
                          questions: "Who is the creator of JSON?",
                        ),
                        Asignment(
                          answer: "Commas",
                          note:
                              "In the JSON syntax, data is separated by commas.",
                          option: ["Semicolons", "Colons", "Commas", "Hyper"],
                          questions:
                              "In the JSON syntax, data is separated by _____.",
                        ),
                        Asignment(
                          answer: "Square brackets",
                          note:
                              "In the JSON syntax, array is written within in square brackets.",
                          option: [
                            "Square brackets",
                            "Curley braces",
                            "Paratheses",
                            "None of the above"
                          ],
                          questions:
                              "In the JSON syntax, array is written within in ____.",
                        ),
                        Asignment(
                          answer: "JSON doesn't support the comments",
                          note:
                              "JSON doesn't support the comments. But you can add an extra attribute to write the comments.",
                          option: [
                            "//",
                            "/*\u2026*/",
                            "<!-- \u2026 -->",
                            "JSON doesn't support the comments"
                          ],
                          questions:
                              "Which is the correct symbol to insert a comment in JSON?",
                        ),
                        Asignment(
                          answer: "JSON doesn't support the comments",
                          note:
                              "In the JSON syntax, data is in name/value pairs.",
                          option: [
                            "class/object",
                            "name/value",
                            "datatype/variable",
                            "value/="
                          ],
                          questions:
                              "In the JSON syntax, data is in ____ pairs.",
                        ),
                        Asignment(
                          answer: "\"name\" : \"value\"",
                          note:
                              "The correct syntax of writing JSON name/value pair, where the value is of string type: \"name\" : \"value\"",
                          option: [
                            "\"name\" : \"value\"",
                            "\"name\" : value",
                            "\"name\" : 'value'",
                            "'name' : 'value'"
                          ],
                          questions:
                              "What is the correct syntax of writing JSON name/value pair, where the value is of string type?",
                        ),
                        Asignment(
                          answer: ".json",
                          note: "The file type for JSON files is \".json\"",
                          option: [".jsn", ".js", ".json", ".jso"],
                          questions: "What is the file type for JSON files?",
                        ),
                        Asignment(
                            answer: "JavaScript Object Notation",
                            note: "JSON stands for JavaScript Object Notation.",
                            option: [
                              "JavaScript Object Notation",
                              "Java Object Notation",
                              "JavaScript Object Normalization",
                              "JavaScript Object-Oriented Notation"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                            answer: "text format",
                            note:
                                "JSON is a text format for storing and transporting data.",
                            option: [
                              "xml format",
                              "text format",
                              "JavaScript",
                              "php format"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                          answer: "JavaScript",
                          note:
                              "The JSON syntax is a subset of the JavaScript syntax.",
                          option: ["Ajax", "Php", "HTML", "JavaScript"],
                          questions:
                              "The JSON syntax is a subset of the _____ syntax.",
                        ),
                        Asignment(
                          answer: "Douglas Crockford",
                          note: "Douglas Crockford is the creator of JSON.",
                          option: [
                            "Alvin Alexander",
                            "Rasmus Lerdorf",
                            "Douglas Crockford",
                            "Jesse James Garrett"
                          ],
                          questions: "Who is the creator of JSON?",
                        ),
                        Asignment(
                          answer: "Commas",
                          note:
                              "In the JSON syntax, data is separated by commas.",
                          option: ["Semicolons", "Colons", "Commas", "Hyper"],
                          questions:
                              "In the JSON syntax, data is separated by _____.",
                        ),
                      ]
                    : [
                        Asignment(
                            answer: "JavaScript Object Notation",
                            note: "JSON stands for JavaScript Object Notation.",
                            option: [
                              "JavaScript Object Notation",
                              "Java Object Notation",
                              "JavaScript Object Normalization",
                              "JavaScript Object-Oriented Notation"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                            answer: "text format",
                            note:
                                "JSON is a text format for storing and transporting data.",
                            option: [
                              "xml format",
                              "text format",
                              "JavaScript",
                              "php format"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                          answer: "JavaScript",
                          note:
                              "The JSON syntax is a subset of the JavaScript syntax.",
                          option: ["Ajax", "Php", "HTML", "JavaScript"],
                          questions:
                              "The JSON syntax is a subset of the _____ syntax.",
                        ),
                        Asignment(
                          answer: "Douglas Crockford",
                          note: "Douglas Crockford is the creator of JSON.",
                          option: [
                            "Alvin Alexander",
                            "Rasmus Lerdorf",
                            "Douglas Crockford",
                            "Jesse James Garrett"
                          ],
                          questions: "Who is the creator of JSON?",
                        ),
                        Asignment(
                          answer: "Commas",
                          note:
                              "In the JSON syntax, data is separated by commas.",
                          option: ["Semicolons", "Colons", "Commas", "Hyper"],
                          questions:
                              "In the JSON syntax, data is separated by _____.",
                        ),
                        Asignment(
                          answer: "Square brackets",
                          note:
                              "In the JSON syntax, array is written within in square brackets.",
                          option: [
                            "Square brackets",
                            "Curley braces",
                            "Paratheses",
                            "None of the above"
                          ],
                          questions:
                              "In the JSON syntax, array is written within in ____.",
                        ),
                        Asignment(
                          answer: "JSON doesn't support the comments",
                          note:
                              "JSON doesn't support the comments. But you can add an extra attribute to write the comments.",
                          option: [
                            "//",
                            "/*\u2026*/",
                            "<!-- \u2026 -->",
                            "JSON doesn't support the comments"
                          ],
                          questions:
                              "Which is the correct symbol to insert a comment in JSON?",
                        ),
                        Asignment(
                          answer: "JSON doesn't support the comments",
                          note:
                              "In the JSON syntax, data is in name/value pairs.",
                          option: [
                            "class/object",
                            "name/value",
                            "datatype/variable",
                            "value/="
                          ],
                          questions:
                              "In the JSON syntax, data is in ____ pairs.",
                        ),
                        Asignment(
                          answer: "\"name\" : \"value\"",
                          note:
                              "The correct syntax of writing JSON name/value pair, where the value is of string type: \"name\" : \"value\"",
                          option: [
                            "\"name\" : \"value\"",
                            "\"name\" : value",
                            "\"name\" : 'value'",
                            "'name' : 'value'"
                          ],
                          questions:
                              "What is the correct syntax of writing JSON name/value pair, where the value is of string type?",
                        ),
                        Asignment(
                          answer: ".json",
                          note: "The file type for JSON files is \".json\"",
                          option: [".jsn", ".js", ".json", ".jso"],
                          questions: "What is the file type for JSON files?",
                        ),
                        Asignment(
                            answer: "JavaScript Object Notation",
                            note: "JSON stands for JavaScript Object Notation.",
                            option: [
                              "JavaScript Object Notation",
                              "Java Object Notation",
                              "JavaScript Object Normalization",
                              "JavaScript Object-Oriented Notation"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                            answer: "text format",
                            note:
                                "JSON is a text format for storing and transporting data.",
                            option: [
                              "xml format",
                              "text format",
                              "JavaScript",
                              "php format"
                            ],
                            questions: "JSON stands for _______."),
                        Asignment(
                          answer: "JavaScript",
                          note:
                              "The JSON syntax is a subset of the JavaScript syntax.",
                          option: ["Ajax", "Php", "HTML", "JavaScript"],
                          questions:
                              "The JSON syntax is a subset of the _____ syntax.",
                        ),
                        Asignment(
                          answer: "Douglas Crockford",
                          note: "Douglas Crockford is the creator of JSON.",
                          option: [
                            "Alvin Alexander",
                            "Rasmus Lerdorf",
                            "Douglas Crockford",
                            "Jesse James Garrett"
                          ],
                          questions: "Who is the creator of JSON?",
                        ),
                        Asignment(
                          answer: "Commas",
                          note:
                              "In the JSON syntax, data is separated by commas.",
                          option: ["Semicolons", "Colons", "Commas", "Hyper"],
                          questions:
                              "In the JSON syntax, data is separated by _____.",
                        ),
                        Asignment(
                          answer: "Square brackets",
                          note:
                              "In the JSON syntax, array is written within in square brackets.",
                          option: [
                            "Square brackets",
                            "Curley braces",
                            "Paratheses",
                            "None of the above"
                          ],
                          questions:
                              "In the JSON syntax, array is written within in ____.",
                        ),
                        Asignment(
                          answer: "JSON doesn't support the comments",
                          note:
                              "JSON doesn't support the comments. But you can add an extra attribute to write the comments.",
                          option: [
                            "//",
                            "/*\u2026*/",
                            "<!-- \u2026 -->",
                            "JSON doesn't support the comments"
                          ],
                          questions:
                              "Which is the correct symbol to insert a comment in JSON?",
                        ),
                        Asignment(
                          answer: "JSON doesn't support the comments",
                          note:
                              "In the JSON syntax, data is in name/value pairs.",
                          option: [
                            "class/object",
                            "name/value",
                            "datatype/variable",
                            "value/="
                          ],
                          questions:
                              "In the JSON syntax, data is in ____ pairs.",
                        ),
                        Asignment(
                          answer: "\"name\" : \"value\"",
                          note:
                              "The correct syntax of writing JSON name/value pair, where the value is of string type: \"name\" : \"value\"",
                          option: [
                            "\"name\" : \"value\"",
                            "\"name\" : value",
                            "\"name\" : 'value'",
                            "'name' : 'value'"
                          ],
                          questions:
                              "What is the correct syntax of writing JSON name/value pair, where the value is of string type?",
                        ),
                        Asignment(
                          answer: ".json",
                          note: "The file type for JSON files is \".json\"",
                          option: [".jsn", ".js", ".json", ".jso"],
                          questions: "What is the file type for JSON files?",
                        ),
                      ];

    void check(var opt) {
      if (index == asignment.length - 1) {
        if (asignment[index].answer == asignment[index].questions[opt]) {
          score += 1;
          answer = true;
        } else {
          answer = false;
          // if (score > 0) {
          //   score -= 5;
          //   answer = false;
          // }
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
        if (asignment[index].answer == asignment[index].option[opt]) {
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
      body: Container(
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
                            asignment[index].questions,
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
                                asignment[index].option[0],
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
                                asignment[index].option[1],
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
                                asignment[index].option[2],
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
                                asignment[index].option[3],
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
