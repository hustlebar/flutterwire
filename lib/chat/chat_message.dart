import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animationController});

  final String text;
  final AnimationController animationController;

  static const String _name = "Tham";

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext ctx) {
    
//    return SizeTransition(
//      sizeFactor: CurvedAnimation(
//        parent: animationController,
//        curve: Curves.easeOut
//      ),
//      child: _buildContainer(ctx),
//    );
  }

  Widget _buildContainer(BuildContext ctx) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: _buildChildren(ctx),
      ),
    );
  }

  List<Widget> _buildChildren(BuildContext ctx) {
    List<Widget> children = [];
    children.add(Container(
      margin: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        child: Text(_name[0]),
      ),
    ));

    children.add(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(_name, style: Theme.of(ctx).textTheme.subhead,),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: Text(text),
        )
      ],
    ));

    return children;
  }
}