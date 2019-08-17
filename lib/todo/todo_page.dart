import 'package:flutter/material.dart';
import 'todos.dart';
import 'todo.dart';

class TodoPage extends StatefulWidget {
  final TodoController controller;
  TodoPage({this.controller});

  @override
  _TodoPageState createState() {
    return _TodoPageState();
  }
}

class _TodoPageState extends State<TodoPage> {
  List<Todo> todos;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    widget.controller.onSync.listen((bool syncState) => setState(() {
      isLoading = syncState;
    }));

//    _renderTodos();
  }

  void _renderTodos() async {
    var _todos = await widget.controller.fetchTodos();
    setState(() {
      todos = _todos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),

      body: Center(
        child: body,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => _renderTodos(),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget get body => isLoading
    ? CircularProgressIndicator()
    : ListView.builder(
      itemCount: todos != null ? todos.length : 1,
      itemBuilder: (ctx, index) {
        if (todos != null) {
          return CheckboxListTile(
            value: todos[index].completed,
            title: Text(todos[index].title),
            onChanged: (bool val) => _updateTodo(todos[index], val)
          );
        } else {
          return Text("Refresh Todos");
        }
      }
    );

  void _updateTodo(Todo todo, bool value) {
    setState(() {
      todo.completed = value;
    });
  }
}