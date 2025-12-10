import 'package:appadaptiveui/features/widgets/desktop_layout/desktop_profil.dart';
import 'package:appadaptiveui/features/widgets/mobile_layout/mobile_profil.dart';
import 'package:appadaptiveui/features/widgets/tablet_layout/tablet_profil.dart';
import 'package:flutter/material.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1024) {
            return DesktopProfil();
          } else if (constraints.maxWidth > 600) {
            return TabletProfil();
          } else {
            return MobileProfil();
          }
        },
      ),
    );
  }
}
