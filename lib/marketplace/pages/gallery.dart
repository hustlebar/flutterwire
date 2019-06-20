import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build();
  }

  Widget _build() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Text('Gallery'),
    );
  }

  Widget get _child {

  }
}