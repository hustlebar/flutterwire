import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutterwire/todo/todo.dart';

//abstract is equal to interface in Java
abstract class Services {
  Future<List<Todo>> getTodos();
  Future<Todo> updateTodo(Todo todo, bool value);
  Future addTodo(Todo todo);
}

//HTTP service to fetch data from external source
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
  Future<Todo> updateTodo(Todo todo, bool value) {
    // TODO: implement updateTodo
    return null;
  }
}

//Firebase service to talk to Firestore
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
  Future<Todo> updateTodo(Todo todo, bool value) async {
    todo.completed = value;
    print(todo.toJson());

//    await Firestore.instance
//      .collection("todos")
//      .document("${todo.id}")
//      .updateData(todo.toJson());
    return todo;
  }

  Future<List<Todo>> todosFromSnapshot(QuerySnapshot snapshot) async {
    return snapshot.documents.map((DocumentSnapshot documentSnapshot) {
      return new Todo.fromJson(documentSnapshot.data);
    }).toList();
  }
}