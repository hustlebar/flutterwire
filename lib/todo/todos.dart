import 'package:http/http.dart';
import 'dart:convert';

import 'todo.dart';
//Ref: https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51

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
      throw Exception('Error while loading todos.');
    }
  }
}