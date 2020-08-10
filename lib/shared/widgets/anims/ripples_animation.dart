import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'circle_painter.dart';
import 'pulse_curve.dart';

class RipplesAnimation extends HookWidget {
  final double size;
  final Color color;
  final Widget child;

  const RipplesAnimation({
    Key key,
    this.size = 80.0,
    this.color = Colors.red,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 1000))
          ..repeat();

    Widget _button() {
      return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[color, Color.lerp(color, Colors.black, .05)],
              ),
            ),
            child: ScaleTransition(
              scale: Tween(begin: 0.95, end: 1.0).animate(
                CurvedAnimation(
                  parent: animationController,
                  curve: const PulsateCurve(),
                ),
              ),
              child: child ?? Container(),
            ),
          ),
        ),
      );
    }

    return Center(
      child: CustomPaint(
        painter: CirclePainter(
          animationController,
          color: color,
        ),
        child: SizedBox(
          width: size * 4.125,
          height: size * 4.125,
          child: _button(),
        ),
      ),
    );
  }
}
