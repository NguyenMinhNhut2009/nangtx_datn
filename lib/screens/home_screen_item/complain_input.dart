import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef StringCallback = Function(String);

class ComplainInput extends StatefulWidget {
  final StringCallback ontapSendMessage;
  ComplainInput({required this.ontapSendMessage});
  @override
  State<ComplainInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ComplainInput> {
  final controller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.only(left: 16, right: 10, top: 8, bottom: 8),
        decoration: BoxDecoration(
            color: Color(0xffE8F5FF), borderRadius: BorderRadius.circular(20)),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Expanded(
            child: CupertinoTextField(
              controller: controller,
              placeholder: "Write a Message",
              padding: EdgeInsets.only(bottom: 2),
              cursorColor: Color(0xff0D99FF),
              cursorWidth: 0.75,
              maxLines: 4,
              minLines: 1,
              decoration: BoxDecoration(),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
              onTap: () {
                widget.ontapSendMessage(controller.text);
                controller.text = '';
              },
              child: Image.asset('assets/icons/chat_send_mes.png', height: 24))
        ]),
      ),
    );
  }
}
