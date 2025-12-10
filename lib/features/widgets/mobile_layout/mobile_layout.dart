import 'package:appadaptiveui/features/widgets/shared_widgets/custom_list.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/custom_slivers_grid.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/shimmer_wrapper.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerWrapper(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const CustomSliversGrid(),
          const CustomList(),
        ],
      ),
    );
  }
}
