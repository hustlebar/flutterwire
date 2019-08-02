import 'package:flutter/material.dart';
import 'todos.dart';

class TodoPage extends StatefulWidget {
  final TodoController _controller;
  TodoPage(this._controller);

  @override
  _TodoPageState createState() {
    return _TodoPageState();
  }
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return null;
  }
}