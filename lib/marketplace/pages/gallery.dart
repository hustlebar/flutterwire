import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build();
  }

  Widget _build() {
    print('Gallery._build() called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Text('Gallery'),
    );
  }
}