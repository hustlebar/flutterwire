import 'package:flutter/material.dart';

class Catelog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return CustomScrollView(
      slivers: _buildSlivers(context),
      physics: BouncingScrollPhysics(),
    );
  }

  List<Widget> _buildSlivers(BuildContext context) {
    return null;
  }
}