import 'package:flutter/material.dart';

class FedeAnimation extends StatelessWidget {
  const FedeAnimation(
      {super.key,
      this.begin = 0.0,
      this.end = 1.0,
      this.duration = const Duration(milliseconds: 3000),
      this.intervelStart = 0.0,
      this.intervelEnd = 1.0,
      required this.child,
      this.curve = Curves.fastOutSlowIn});

  final double begin;
  final double end;
  final Duration duration;
  final double intervelStart;
  final double intervelEnd;
  final Widget child;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: begin, end: end),
      duration: duration,
      curve: Interval(intervelStart, intervelEnd, curve: curve),
      child: child,
      builder: (BuildContext context, double? value, Widget? child) {
        return Opacity(
          opacity: value!,
          child: child,
        );
      },
    );
  }
}