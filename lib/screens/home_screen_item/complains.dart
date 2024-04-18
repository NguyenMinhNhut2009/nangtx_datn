import 'package:datn_test/model/chat_user.dart';
import 'package:datn_test/screens/home_screen_item/complain_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:datn_test/constants/ui_constants.dart';

class Complaints extends StatelessWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ChatUser> chatUser = [
      ChatUser(
          avatar: 'assets/icons/read.png',
          message: "Xin chao 1",
          teacher: 'Teacher 1',
          userId: '123456789'),
      ChatUser(
          avatar: 'assets/icons/read.png',
          message: "Xin chao 2",
          teacher: 'Teacher 2',
          userId: '987654321'),
      ChatUser(
          avatar: 'assets/icons/read.png',
          message: "Xin chao 3",
          teacher: 'Teacher 3',
          userId: '123456789'),
      ChatUser(
          avatar: 'assets/icons/read.png',
          message: "Xin chao 4",
          teacher: 'Teacher 4',
          userId: '123456789'),
    ];
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
        body: ListView.builder(
            itemCount: chatUser.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ComplainDetail(
                                chatUser: chatUser[index],
                                id: index + 1,
                              )));
                },
                child: Card(
                  margin: EdgeInsets.all(8.0),
                  elevation: 4.0,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          chatUser[index].avatar,
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chatUser[index].teacher,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              "${chatUser[index].userId == "987654321" ? "You: " : ""}${chatUser[index].message}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
