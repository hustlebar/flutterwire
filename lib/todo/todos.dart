import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import 'todo.dart';
//Ref: https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51

class TodoController {
  final TodoServices services;
  List<Todo> todos;

  StreamController<bool> onSyncController = new StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  TodoController(this.services);

  Future<List<Todo>> fetchTodos() async {
    onSyncController.add(true);
    todos = await services.todos();
    onSyncController.add(false);

    return todos;
  }
}

class TodoApp extends StatelessWidget {
  final TodoController _controller;
  TodoApp(this._controller);

  @override
  Widget build(BuildContext context) {
    return null;
  }

  Widget _build(BuildContext context) {

//    new TodoServices().todos().then((onTodos) => {
//
//    });

//    return ListView.builder(
//      itemCount: todos != null ? todos.length : 1,
//      itemBuilder: null
//    );
  }
}

class TodoServices {
  Client client = new Client();
  final String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> todos() async {
    final response = await client.get(url);
    print(response.statusCode);

    if (response.statusCode == 200) {
      List<Todo> todos = (jsonDecode(response.body) as List)
          .map((i) => Todo.fromJson(i)).toList();

//      for (var i = 0; i < todos.length; i++) {
//        print(todos[i]);
//      }
      return todos;
    } else {
      throw Exception('Error while loading todos..');
    }
  }
}