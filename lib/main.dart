import 'package:challange_frontend_layouting/view/chat_screen.dart';
import 'package:flutter/material.dart';

import 'view/home_screen.dart';

void main() => runApp(Challenge());

class Challenge extends StatelessWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
        '/ChatScreen' : (context) => ChatScreen(),
      },
    );
  }
}