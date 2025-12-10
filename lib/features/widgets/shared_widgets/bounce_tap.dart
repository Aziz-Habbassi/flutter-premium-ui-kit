import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BounceTap extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final Duration duration;

  const BounceTap({
    super.key,
    required this.child,
    required this.onTap,
    this.duration = const Duration(milliseconds: 120),
  });

  @override
  State<BounceTap> createState() => _BounceTapState();
}

class _BounceTapState extends State<BounceTap>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);

    _animation = Tween<double>(begin: 1.0, end: 0.92).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _handleTap() async {
    // Bounce down
    await _controller.forward();
    // Bounce up
    await _controller.reverse();

    HapticFeedback.lightImpact(); // premium effect

    widget.onTap(); // your navigation or action
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: ScaleTransition(scale: _animation, child: widget.child),
    );
  }
}
