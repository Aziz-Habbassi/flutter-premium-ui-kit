import 'package:appadaptiveui/features/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class CustomTabletList extends StatelessWidget {
  const CustomTabletList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: AspectRatio(aspectRatio: 1, child: CustomItem()),
            );
          },
        ),
      ),
    );
  }
}
