import 'package:appadaptiveui/features/widgets/items_list.dart';
import 'package:flutter/material.dart';

class CustomDarwer extends StatelessWidget {
  const CustomDarwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffDBDBDB),
      child: const Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite, color: Colors.black, size: 72),
          ),
          SizedBox(height: 48),
          ItemsList(),
        ],
      ),
    );
  }
}
