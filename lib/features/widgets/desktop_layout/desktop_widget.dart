import 'package:appadaptiveui/features/widgets/shared_widgets/custom_item.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/item2.dart';
import 'package:flutter/material.dart';

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(height: 16),
        Expanded(child: Item2()),
      ],
    );
  }
}
