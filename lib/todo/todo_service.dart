import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutterwire/todo/todo.dart';

abstract class Services {
  Future<List<Todo>> getTodos();
  Future<Todo> updateTodo(Todo todo);
  Future addTodo(Todo todo);
}

class HttpServices implements Services {
  final Client client = new Client();
  final String url = "https://jsonplaceholder.typicode.com/todos";

  @override
  Future addTodo(Todo todo) {
    // TODO: implement addTodo
    return null;
  }

  @override
  Future<List<Todo>> getTodos() async {
    final response = await client.get(url);
    if (response.statusCode == 200) {
      List<Todo> todos = (jsonDecode(response.body) as List)
          .map((i) => Todo.fromJson(i)).toList();

      return todos;
    } else {
      throw Exception('Error while loading todos..');
    }
  }

  @override
  Future<Todo> updateTodo(Todo todo) {
    // TODO: implement updateTodo
    return null;
  }
}

class FirebaseServices implements Services {
  @override
  Future addTodo(Todo todo) {
    // TODO: implement addTodo
    return null;
  }

  @override
  Future<List<Todo>> getTodos() async {
    QuerySnapshot snapshot = await
      Firestore.instance.collection("todos").getDocuments();
    return todosFromSnapshot(snapshot);
  }

  @override
  Future<Todo> updateTodo(Todo todo) {
    // TODO: implement updateTodo
    return null;
  }

  Future<List<Todo>> todosFromSnapshot(QuerySnapshot snapshot) async {
    return snapshot.documents.map((DocumentSnapshot documentSnapshot) {
      return new Todo.fromJson(documentSnapshot.data);
    }).toList();
  }
}