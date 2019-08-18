class Todo {
  final int userId;
  String id;
  final String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

//  set completed(bool value) => this.completed = value;

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      json['userId'] as int,
      json['id'] as String,
      json['title'] as String,
      json['completed'] as bool
    );
  }

  Map<String, dynamic> toJson() =>
    {
      'title': title,
      'completed': completed
    };
}