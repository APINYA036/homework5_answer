import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget _child;
  final double _maxWidth;

  const MyScaffold({
    Key? key,
    required child,
    maxWidth = 500.0,
  })  : _child = child,
        _maxWidth = maxWidth,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: _maxWidth),
        child: _child,
      ),
    );
  }
}
