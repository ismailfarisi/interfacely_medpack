import 'package:flutter/material.dart';

class HorizontalSizeAnim extends StatefulWidget {
  final Widget child;
  const HorizontalSizeAnim({Key? key, required this.child}) : super(key: key);

  @override
  _HorizontalSizeAnimState createState() => _HorizontalSizeAnimState();
}

class _HorizontalSizeAnimState extends State<HorizontalSizeAnim>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _tween;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _controller.forward();
    _tween = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _tween,
      child: widget.child,
      axis: Axis.horizontal,
      axisAlignment: -1.0,
    );
  }
}
