import 'package:challange_frontend_layouting/chat_user.dart';
import 'package:challange_frontend_layouting/chat_users.dart';
import 'package:challange_frontend_layouting/profile_users.dart';
import 'package:challange_frontend_layouting/theme.dart';
import 'package:challange_frontend_layouting/users.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20.0))),
              child: ProfileUsers(
                username: 'Jakarta Fair',
                lastMessage: 'I saw it clearly and mig...',
                userImage: 'assets/images/icon1.png',
              ),
            ),
            SizedBox(height: 20.0),
            ChatUsers(
                message: 'How are ya guys?',
                userImage: 'assets/images/pic1.png',
                messageTime: '2:30'),
            ChatUsers(
                message: 'Find here :P',
                userImage: 'assets/images/pic3.png',
                messageTime: '3:11'),
            ChatUser(
                message:
                    'Thinking about how to deal \nwith this client from hell...',
                userImage: 'assets/images/pic.png',
                messageTime: '22:08'),
            ChatUsers(
                message: 'Love them',
                userImage: 'assets/images/pic2.png',
                messageTime: '23:11'),
            SizedBox(height: 50.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Type message ...', style: greyTextStyle.copyWith(fontSize: 16.0)),
                  Image.asset('assets/images/btn_send.png', height: 35.0)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
