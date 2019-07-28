import 'package:http/http.dart';
import 'dart:convert';

import 'todo.dart';

class TodoServices {
  Client client = new Client();
  final String url = "https://jsonplaceholder.typicode.com/todos";

  void todos() async {
    final response = await client.get(url);
    print(response.statusCode);

    if (response.statusCode == 200) {
      Map<String, dynamic> todos = jsonDecode(response.body);

    }
  }
}