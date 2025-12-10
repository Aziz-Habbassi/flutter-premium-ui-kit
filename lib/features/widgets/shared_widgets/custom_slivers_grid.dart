import 'package:appadaptiveui/features/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class CustomSliversGrid extends StatelessWidget {
  const CustomSliversGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return CustomItem();
      },
      itemCount: 4,
    );
  }
}
