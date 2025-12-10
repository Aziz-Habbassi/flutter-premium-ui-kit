import 'package:flutter/material.dart';

class TabletProfil extends StatelessWidget {
  const TabletProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Icon(Icons.person, size: 128), Text("Profil Page")],
    );
  }
}
