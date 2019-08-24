import 'package:flutter/material.dart';

import 'chat_screen.dart';

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext ctx) {
    return MaterialApp(
      title: 'Friendlychat',
      home: ChatScreen(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent
      ),
    );
  }
}