import 'package:flutter/material.dart';

/// Use for make white space between 2 widget with horizontal
/// orientation.
class HSpace extends StatelessWidget {
  final double size;

  const HSpace({Key key, this.size = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
