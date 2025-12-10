import 'package:appadaptiveui/core/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveUi());
}

class AdaptiveUi extends StatelessWidget {
  const AdaptiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
