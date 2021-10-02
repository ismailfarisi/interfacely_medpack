import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

class PageTransitionAnimation extends PageRouteBuilder {
  final Widget widget;

  PageTransitionAnimation(this.widget)
      : super(
            transitionDuration: Duration(milliseconds: 1000),
            pageBuilder: (context, anim, _) => widget,
            transitionsBuilder: (context, anim1, anim2, child) {
              return CircularRevealAnimation(
                child: child,
                animation: anim1,
                centerAlignment: Alignment(-.9, -.85),
              );
            });
}
