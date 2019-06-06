import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _globalKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(
        children: <Widget>[
          _emailField,
          _passwordField,
          RaisedButton(
            child: Text('Login'),
            onPressed: _onPressed,
          )
        ],
      ),
    );
  }

  void _onPressed() {
    print('Enter onPressed');
  }

  Widget get _passwordField {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          helperText: 'Required',
          labelText: 'Password',
        ),
        obscureText: true,
        autovalidate: true,
      ),
    );
  }

  Widget get _emailField {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          helperText: 'Required',
          labelText: 'Email'
        ),
        autovalidate: true,
        validator: (String val) {
          if (val.isEmpty) {
            return "Field can't be left blank";
          }
        },
        onSaved: (String value) => print('Value $value'),
      ),
    );
  }
}