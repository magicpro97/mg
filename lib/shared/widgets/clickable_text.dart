import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color;

  const ClickableText({
    Key key,
    this.onPress,
    @required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
