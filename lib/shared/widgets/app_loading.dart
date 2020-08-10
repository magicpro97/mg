import 'package:flutter/material.dart';
import 'package:mg/core/extensions/screen_size.dart';
import 'package:mg/shared/widgets/anims/ripples_animation.dart';

class AppLoading extends StatelessWidget {
  final bool loading;
  final Widget child;

  const AppLoading({
    Key key,
    this.child,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth;
    final screenHeight = context.screenHeight;

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        child ?? Container(),
        Visibility(
          visible: loading,
          child: Container(
            width: screenWidth,
            height: screenHeight,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.black.withOpacity(0.3)),
                RipplesAnimation(
                  size: 24.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
