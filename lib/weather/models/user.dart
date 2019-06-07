class User {
  String email, password;

  User({this.email, this.password});

  @override
  String toString() {
    return '{email: $email, password: $password}';
  }
}