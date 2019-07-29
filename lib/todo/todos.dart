import 'package:http/http.dart';
import 'dart:convert';

import 'todo.dart';

class TodoServices {
  Client client = new Client();
  final String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> todos() async {
    final response = await client.get(url);
    print(response.statusCode);

    if (response.statusCode == 200) {
      List<Todo> todos = (jsonDecode(response.body) as List)
          .map((i) => Todo.fromJson(i)).toList();
      return todos;
    } else {
      throw Exception('Error while loading todos');
    }
  }
}