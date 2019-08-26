import 'package:flutter/material.dart';

//import 'package:http/http.dart';
import 'dart:async';
//import 'dart:convert';

import 'todo.dart';
import 'todo_service.dart';
//Ref: https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51

class TodoController {
  final Services services;
  List<Todo> todos;

  StreamController<bool> onSyncController = new StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  TodoController(this.services);

  Future<List<Todo>> fetchTodos() async {
    onSyncController.add(true);
    todos = await services.getTodos();
    onSyncController.add(false);

    return todos;
  }

  void updateTodo(Todo todo, bool value) async {
    onSyncController.add(true);
    await services.updateTodo(todo, value);
    onSyncController.add(false);
  }

  void addTodo(Todo todo) async {
    services.addTodo(todo);
  }
}

class TodoApp extends StatelessWidget {
  final TodoController _controller;
  TodoApp(this._controller);

  @override
  Widget build(BuildContext context) {
    return null;
  }
}

//class TodoServices {
//  Client client = new Client();
//  final String url = "https://jsonplaceholder.typicode.com/todos";
//
//  Future<List<Todo>> todos() async {
//    final response = await client.get(url);
//    print(response.statusCode);
//
//    if (response.statusCode == 200) {
//      List<Todo> todos = (jsonDecode(response.body) as List)
//          .map((i) => Todo.fromJson(i)).toList();
//
////      for (var i = 0; i < todos.length; i++) {
////        print(todos[i]);
////      }
//      return todos;
//    } else {
//      throw Exception('Error while loading todos..');
//    }
//  }
//}