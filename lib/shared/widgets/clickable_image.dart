import 'package:flutter/material.dart';

class ClickableImage extends StatelessWidget {
  final Function onPress;
  final Image image;

  ClickableImage({
    this.onPress,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: image,
      onTap: onPress,
    );
  }
}
