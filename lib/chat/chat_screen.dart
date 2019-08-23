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
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration.collapsed(hintText: 'Send your message'),
              onSubmitted: _onSubmit,
            ),
          )
        ],
      ),
    );
  }

  void _onSubmit(String value) {
    print(value);
    _controller.clear();
  }
}