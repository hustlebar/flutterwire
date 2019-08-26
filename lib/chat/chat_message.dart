import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text});
  final String text;

  static const String _name = "Tham";

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext ctx) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: _buildChildren(ctx),
      ),
    );
  }

  List<Widget> _buildChildren(BuildContext ctx) {
    List<Widget> children = new List(2);
    children.add(Container(
      margin: EdgeInsets.all(10.0),
      child: CircleAvatar(
        child: Text(_name[0]),
      ),
    ));
    return children;
  }
}