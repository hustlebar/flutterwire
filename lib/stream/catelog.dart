import 'package:flutter/material.dart';
import 'dart:async';

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
    StreamBuilder(
      stream: null,
    );
    return null;
  }
}