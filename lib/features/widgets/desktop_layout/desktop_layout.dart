import 'package:appadaptiveui/features/widgets/shared_widgets/custom_darwer.dart';
import 'package:appadaptiveui/features/widgets/desktop_layout/desktop_widget.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/shimmer_wrapper.dart';
import 'package:appadaptiveui/features/widgets/tablet_layout/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDarwer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabletLayout(),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ShimmerWrapper(child: DesktopWidget()),
          ),
        ),
      ],
    );
  }
}
