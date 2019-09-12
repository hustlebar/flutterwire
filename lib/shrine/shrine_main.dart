import 'package:flutter/material.dart';

import 'login.dart';

class ShrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext ctx) {
    return MaterialApp(
      title: 'Shrine',
      home: LoginPage(),
//      routes: ,
    );
  }

  ThemeData _buildTheme() {
    final ThemeData base = ThemeData.light();
  }
}