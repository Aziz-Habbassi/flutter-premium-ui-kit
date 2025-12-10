import 'package:appadaptiveui/features/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveUi());
}

class AdaptiveUi extends StatelessWidget {
  const AdaptiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
