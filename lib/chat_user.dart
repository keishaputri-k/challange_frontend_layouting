import 'package:challange_frontend_layouting/theme.dart';
import 'package:flutter/material.dart';

class ChatUser extends StatelessWidget {
  final String message;
  final String userImage;
  final String messageTime;

  const ChatUser(
      {
        required this.message,
        required this.userImage,
        required this.messageTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(message),
                SizedBox(height: 5.0),
                Text(messageTime)
              ],
            ),
          ),
          SizedBox(width: 12.0),
          Image.asset(userImage, height: 40.0),
        ],
      ),
    );
  }
}
