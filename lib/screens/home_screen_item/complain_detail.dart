import 'package:datn_test/model/chat_socket.dart';
import 'package:datn_test/model/chat_user.dart';
import 'package:datn_test/screens/home_screen_item/complain_input.dart';
import 'package:datn_test/screens/home_screen_item/complain_item.dart';
import 'package:flutter/material.dart';

class ComplainDetail extends StatefulWidget {
  final ChatUser chatUser;
  final int id;
  const ComplainDetail({super.key, required this.chatUser, required this.id});

  @override
  State<ComplainDetail> createState() => _ComplainDetailState();
}

class _ComplainDetailState extends State<ComplainDetail> {
  @override
  Widget build(BuildContext context) {
    List<ChatSocket> chatSocket = widget.id == 1
        ? [
            ChatSocket(message: '1', receiverId: '123', senderId: '987654321'),
            ChatSocket(message: '12', receiverId: '123', senderId: '123456789'),
            ChatSocket(
                message: '123', receiverId: '123', senderId: '987654321'),
            ChatSocket(
                message: '1234', receiverId: '123', senderId: '987654321'),
            ChatSocket(
                message: '12345', receiverId: '123', senderId: '987654321'),
            ChatSocket(
                message: '123456', receiverId: '123', senderId: '123456789'),
            ChatSocket(
                message: '1234567', receiverId: '123', senderId: '123456789'),
            ChatSocket(
                message: '12345678', receiverId: '123', senderId: '123456789'),
            ChatSocket(
                message: '1123456789',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '1234567891',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '12345678912',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '123456789123',
                receiverId: '123',
                senderId: '987654321'),
            ChatSocket(
                message: '1234567891234',
                receiverId: '123',
                senderId: '987654321'),
            ChatSocket(
                message: '123454678912345',
                receiverId: '123',
                senderId: '987654321'),
            ChatSocket(
                message: '123456789123456',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '1234567891234567',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '12345678912345678',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '123456789123456789',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '1234567891234567891',
                receiverId: '123',
                senderId: '123456789'),
            ChatSocket(
                message: '12345678912345678912',
                receiverId: '123',
                senderId: '987654321'),
            ChatSocket(
                message: '123456789123456789123',
                receiverId: '123',
                senderId: '987654321'),
          ]
        : widget.id == 2
            ? [
                ChatSocket(
                    message: '1', receiverId: '123', senderId: '987654321'),
                ChatSocket(
                    message: '12', receiverId: '123', senderId: '123456789'),
                ChatSocket(
                    message: '123', receiverId: '123', senderId: '987654321'),
                ChatSocket(
                    message: '1234', receiverId: '123', senderId: '987654321'),
                ChatSocket(
                    message: '12345', receiverId: '123', senderId: '987654321'),
                ChatSocket(
                    message: '123456',
                    receiverId: '123',
                    senderId: '123456789'),
                ChatSocket(
                    message: '1234567',
                    receiverId: '123',
                    senderId: '123456789'),
                ChatSocket(
                    message: '12345678',
                    receiverId: '123',
                    senderId: '123456789'),
                ChatSocket(
                    message: '1123456789',
                    receiverId: '123',
                    senderId: '123456789'),
                ChatSocket(
                    message: '1234567891',
                    receiverId: '123',
                    senderId: '123456789'),
                ChatSocket(
                    message: '12345678912',
                    receiverId: '123',
                    senderId: '123456789'),
                ChatSocket(
                    message: '123456789123',
                    receiverId: '123',
                    senderId: '987654321'),
                ChatSocket(
                    message: '1234567891234',
                    receiverId: '123',
                    senderId: '987654321'),
                ChatSocket(
                    message: '123454678912345',
                    receiverId: '123',
                    senderId: '987654321'),
                ChatSocket(
                    message: '123456789123456',
                    receiverId: '123',
                    senderId: '123456789'),
              ]
            : widget.id == 3
                ? [
                    ChatSocket(
                        message: '1234567',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '12345678',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1123456789',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1234567891',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '12345678912',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '123456789123',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '1234567891234',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '123454678912345',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '123456789123456',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1234567891234567',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '12345678912345678',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '123456789123456789',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1234567891234567891',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '12345678912345678912',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '123456789123456789123',
                        receiverId: '123',
                        senderId: '987654321'),
                  ]
                : [
                    ChatSocket(
                        message: '1', receiverId: '123', senderId: '987654321'),
                    ChatSocket(
                        message: '12',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '123',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '1234',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '12345',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '123456',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1234567',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '12345678',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1123456789',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1234567891',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '12345678912',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '123456789123',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '1234567891234',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '123454678912345',
                        receiverId: '123',
                        senderId: '987654321'),
                    ChatSocket(
                        message: '123456789123456',
                        receiverId: '123',
                        senderId: '123456789'),
                    ChatSocket(
                        message: '1234567891234567',
                        receiverId: '123',
                        senderId: '123456789'),
                  ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              widget.chatUser.avatar,
              width: 30,
              height: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Text(widget.chatUser.teacher)
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            itemBuilder: (context, index) {
              return ComplainItem(
                chats: chatSocket[index],
                user: widget.chatUser,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 8);
            },
            itemCount: chatSocket.length,
            padding: EdgeInsets.all(8),
          )),
          ComplainInput(
            ontapSendMessage: (message) => sendMessage(message),
          ),
        ],
      ),
    );
  }

  sendMessage(String message) {
    if (message.isNotEmpty) {
      // final user = AppSettings.userInfo!;
      // final chat = ChatSocket(
      //     senderId: user.id,
      //     receiverId: widget.chat.userId,
      //     type: 'text',
      //     createdAt: DateTime.now().millisecondsSinceEpoch,
      //     message: message,
      //     postId: widget.chat.postId);
      // SocketService.sendMessage(chat);
    }
  }
}
