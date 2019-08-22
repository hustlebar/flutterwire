import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friendlychat'),
      ),
      body: _buildComposer(ctx),
    );
  }

  Widget _buildComposer(BuildContext ctx) {
    return Container(
      padding: EdgeInsets.all(10.0),
    );
  }
}