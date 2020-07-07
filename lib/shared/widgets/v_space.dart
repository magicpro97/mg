import 'package:flutter/material.dart';

/// Use for make white space between 2 widget with vertical
/// orientation.
class VSpace extends StatelessWidget {
  final double size;

  const VSpace({Key key, this.size = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}
