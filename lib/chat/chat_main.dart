import 'package:flutter/material.dart';

import 'chat_screen.dart';

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext ctx) {
    TargetPlatform currentPlatform = Theme.of(ctx).platform;
    return MaterialApp(
      title: 'Friendlychat',
      home: ChatScreen(),
      theme: currentPlatform == TargetPlatform.iOS
        ? kiosTheme()
        : defaultTheme(),
    );
  }

  ThemeData kiosTheme() {
    return ThemeData(
      primarySwatch: Colors.orange,
      primaryColor: Colors.grey[100],
      primaryColorBrightness: Brightness.light,
    );
  }

  ThemeData defaultTheme() {
    return ThemeData(
      primarySwatch: Colors.purple,
      accentColor: Colors.orangeAccent[400],
    );
  }
}