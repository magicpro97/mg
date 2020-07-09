import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final Icon icon;
  final Color backgroundColor;

  const RoundedIcon({
    Key key,
    @required this.icon,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Icon(
          Icons.lens,
          color: backgroundColor,
          size: icon.size * 2.0,
        ),
        icon,
      ],
    );
  }
}
