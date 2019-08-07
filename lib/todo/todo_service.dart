import 'package:flutterwire/todo/todo.dart';

abstract class Services {
  Future<List<Todo>> getTodos();
  Future<Todo> updateTodo(Todo todo);
  Future addTodo(Todo todo);
}

class HttpServices implements Services {
  @override
  Future addTodo(Todo todo) {
    // TODO: implement addTodo
    return null;
  }

  @override
  Future<List<Todo>> getTodos() {
    // TODO: implement getTodos
    return null;
  }

  @override
  Future<Todo> updateTodo(Todo todo) {
    // TODO: implement updateTodo
    return null;
  }
}