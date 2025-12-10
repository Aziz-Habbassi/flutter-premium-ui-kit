import 'package:appadaptiveui/features/widgets/shared_widgets/custom_darwer.dart';
import 'package:appadaptiveui/features/widgets/tablet_layout/tablet_profil.dart';
import 'package:flutter/material.dart';

class DesktopProfil extends StatelessWidget {
  const DesktopProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDarwer()),
        Expanded(flex: 3, child: TabletProfil()),
      ],
    );
  }
}
