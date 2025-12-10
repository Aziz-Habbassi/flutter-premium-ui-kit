import 'package:appadaptiveui/core/models/drawer_item.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});
  final List<DrawerItem> items = const [
    DrawerItem(icon: Icons.person, text: "P R O F I L"),
    DrawerItem(icon: Icons.home, text: "D A S H B O A R D"),
    DrawerItem(icon: Icons.settings, text: "S E T T I N G S"),
    DrawerItem(icon: Icons.logout, text: "L O G O U T"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(drawerItem: items[index]);
      },
    );
  }
}
