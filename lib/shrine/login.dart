import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shrine'),
      ),
      body: _build(context),
    );
  }

  Widget _build(BuildContext context) {
    final _userNameController = TextEditingController();
    final _passwordController = TextEditingController();

    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
          SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 50.0,),
              Text('Shrine')
            ],
          ),

          SizedBox(height: 120.0,),
          TextField(
            controller: _userNameController,
            decoration: InputDecoration(
              filled: true,
              labelText: 'Username'
            ),
          ),
          SizedBox(height: 12.0,),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
            ),
            obscureText: true,
          ),

          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  print('Username: ${_userNameController.text}');
                },
              ),
              RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  print('Password: ${_passwordController.text}');
                },
              )
            ],
          ),
          SizedBox(height: 100.0,),
        ],
      ),
    );
  }
}