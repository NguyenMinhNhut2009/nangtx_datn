import 'package:datn_test/model/chat_socket.dart';
import 'package:datn_test/model/chat_user.dart';
import 'package:flutter/material.dart';

class ComplainItem extends StatelessWidget {
  final ChatUser user;
  final ChatSocket chats;
  const ComplainItem({super.key, required this.chats, required this.user});

  @override
  Widget build(BuildContext context) {
    final isHot = "987654321" == chats.senderId;
    return Column(
      crossAxisAlignment:
          isHot ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment:
              isHot ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            isHot
                ? SizedBox()
                : Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: ClipOval(
                      child: Image.asset(
                        user.avatar,
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    )),
            Flexible(
              child: Container(
                  constraints: BoxConstraints(
                    minWidth: 100,
                  ),
                  margin: EdgeInsets.only(
                      left: isHot ? 65 : 0, right: isHot ? 0 : 38),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: isHot ? Color(0xff0D99FF) : Color(0xffF3f3f3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(chats.message ?? '',
                      style: TextStyle(
                          color: isHot ? Colors.white : Color(0xff001424)))),
            )
          ],
        )
      ],
    );
  }
}
