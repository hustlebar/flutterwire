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
      onTapUp: _onTapUp,
      child: Text('Gesture Text'),
    );
  }

  void _onTapUp(TapUpDetails _details) {
    print('OnTapUp is called');
    print(_details.globalPosition.direction);
  }

  void _onTap() {
    print('Tap called');
  }

  void _onDoubleTap() {
    print('Double Tab called');
  }
}