import 'package:flutter/material.dart';

class FwButton extends StatelessWidget {
  String name;
  FwButton(this.name);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(name),
    );
  }
}