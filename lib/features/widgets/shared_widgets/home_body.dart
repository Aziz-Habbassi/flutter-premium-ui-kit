import 'package:appadaptiveui/features/widgets/desktop_layout/desktop_layout.dart';
import 'package:appadaptiveui/features/widgets/mobile_layout/mobile_layout.dart';
import 'package:appadaptiveui/features/widgets/tablet_layout/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 900) {
            return DesktopLayout();
          } else if (constraints.maxWidth > 600) {
            return TabletLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}
