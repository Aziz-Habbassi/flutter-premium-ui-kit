import 'package:appadaptiveui/features/widgets/shared_widgets/item2.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.only(top: 16), child: Item2());
      },
    );
  }
}
