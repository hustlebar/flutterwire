import 'package:flutter/material.dart';

class LogoAnimationWidget extends StatefulWidget {
  @override
  LogoAnimationState createState() {
    return LogoAnimationState();
  }
}

class LogoAnimationState extends State<LogoAnimationWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return _build;
  }

  Widget get _build {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 100,
      width: 100,
      child: FlutterLogo(),
    );
  }
}