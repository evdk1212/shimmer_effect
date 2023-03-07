library shimmer_effect;

import 'package:flutter/material.dart';

class ShimmerEffect extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Color color;
  final Color secondaryColor;

  const ShimmerEffect({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 1500),
    this.color = Colors.white,
    this.secondaryColor = Colors.grey,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ShimmerEffectState createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<ShimmerEffect>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);

    _animation = Tween<double>(begin: -1.0, end: 2.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
      reverseCurve: Curves.linear,
    ));

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.secondaryColor,
                widget.color,
                widget.secondaryColor,
              ],
              stops: [
                _animation.value + 0.3,
                _animation.value + 0.5,
                _animation.value + 0.7
              ],
              begin: const Alignment(-1, -1),
              end:const  Alignment(1, 1),
              tileMode: TileMode.clamp,
            ),
          ),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

