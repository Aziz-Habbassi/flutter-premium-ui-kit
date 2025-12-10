import 'package:appadaptiveui/features/premiumFeatures/adaptive_layout.dart';
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
      child: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
