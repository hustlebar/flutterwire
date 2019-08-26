import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];
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
      body: _buildTheme(context),
    );
  }

  Widget _buildTheme(BuildContext ctx) {
    return IconTheme(
      data: IconThemeData(color: Theme.of(ctx).accentColor),
      child: _buildChild(ctx),
    );
  }

  Widget _buildChild(BuildContext ctx) {
    return Column(
      children: <Widget>[
        _buildMessageList(ctx),
        _buildComposer(ctx)
      ],
    );
  }

  Widget _buildMessageList(BuildContext ctx) {
    return Flexible(
      child: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (_, int index) => _messages[index],
        reverse: true,
        padding: EdgeInsets.all(10.0),
      ),
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
              decoration: InputDecoration.collapsed(hintText: 'Send your message...'),
              onSubmitted: _onSubmit,
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _onSubmit(_controller.text),
            ),
          )
        ],
      ),
    );
  }

  void _onSubmit(String value) {
    _controller.clear();
    ChatMessage message = ChatMessage(text: value);
    setState(() {
      _messages.insert(0, message);
    });
  }
}