import 'package:flutter/material.dart';

class WeatherGesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _onDoubleTap,
      onTap: _onTap,
      child: Text('Gesture Text'),
    );
  }

  void _onTap() {
    print('Tap called');
  }

  void _onDoubleTap() {
    print('Double Tab called');
  }
}