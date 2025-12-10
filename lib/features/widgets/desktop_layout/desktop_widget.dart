import 'package:appadaptiveui/features/widgets/shared_widgets/item1.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/item2.dart';
import 'package:flutter/material.dart';

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: Item1()),
        SizedBox(height: 16),
        Expanded(child: Item2()),
      ],
    );
  }
}
