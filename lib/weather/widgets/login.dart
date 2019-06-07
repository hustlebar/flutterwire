import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _globalKey = new GlobalKey<FormState>();

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
            onPressed: () => _onPressed(_globalKey),
          )
        ],
      ),
    );
  }

  void _onPressed(GlobalKey<FormState> formKey) {
    print('Enter onPressed');
    print('Is the form validated: ${formKey.currentState.validate()}');
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    }
//    FormState formState = Form.of(ctx);
//    formState.save();
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
        validator: (value) {
          if (value.isEmpty) {
            return 'Password should not be empty';
          }
        },
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
        validator: (value) {
          if (value.isEmpty) {
            return 'Email should not be empty.';
          }
        },
      ),
    );
  }
}