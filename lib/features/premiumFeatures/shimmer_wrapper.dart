import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWrapper extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const ShimmerWrapper({
    super.key,
    required this.child,
    this.delay = const Duration(milliseconds: 800),
  });

  @override
  State<ShimmerWrapper> createState() => _ShimmerWrapperState();
}

class _ShimmerWrapperState extends State<ShimmerWrapper> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(widget.delay, () {
      if (mounted) setState(() => _loading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 800),
      child: _loading ? _buildShimmerPlaceholder() : widget.child,
    );
  }

  Widget _buildShimmerPlaceholder() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
      ),
    );
  }
}
