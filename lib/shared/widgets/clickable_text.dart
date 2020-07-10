import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color;
  final FontWeight fontWeight;

  const ClickableText({
    Key key,
    this.onPress,
    @required this.text,
    this.color,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
