import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutterwire/todo/todo.dart';

//abstract is equal to interface in Java
abstract class Services {
  Future<List<Todo>> getTodos();
  Future<Todo> updateTodo(Todo todo, bool value);
  void addTodo(Todo todo);
}

//Firebase service to talk to Firestore
class FirebaseServices implements Services {
  @override
  void addTodo(Todo todo) async {
    Firestore.instance
      .collection("todods")
      .add(todo.toJson());
  }

  @override
  Future<List<Todo>> getTodos() async {
    QuerySnapshot snapshot = await
      Firestore.instance.collection("todos").getDocuments();
    return todosFromSnapshot(snapshot);
  }

  @override
  Future<Todo> updateTodo(Todo todo, bool value) async {
    todo.completed = value;

    await Firestore.instance
      .collection("todos")
      .document(todo.id)
      .updateData(todo.toJson());
    return todo;
  }

  Future<List<Todo>> todosFromSnapshot(QuerySnapshot snapshot) async {
    return snapshot.documents.map((DocumentSnapshot documentSnapshot) {
      Todo todo = new Todo.fromJson(documentSnapshot.data);
      todo.id = documentSnapshot.documentID;
      return todo;
    }).toList();
  }
}

//HTTP service to fetch data from external source
class HttpServices implements Services {
  final Client client = new Client();
  final String url = "https://jsonplaceholder.typicode.com/todos";

  @override
  void addTodo(Todo todo) {
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
  Future<Todo> updateTodo(Todo todo, bool value) {
    // TODO: implement updateTodo
    return null;
  }
}