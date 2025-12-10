import 'package:appadaptiveui/features/widgets/custom_list.dart';
import 'package:appadaptiveui/features/widgets/tablet_layout/custom_tablet_list.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const CustomTabletList(),
        const CustomList(),
      ],
    );
  }
}
