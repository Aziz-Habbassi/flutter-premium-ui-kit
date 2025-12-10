import 'package:appadaptiveui/core/models/drawer_item.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DrawerItem> items = [
      DrawerItem(
        icon: Icons.person,
        text: "P R O F I L",
        ontap: () => context.go("/Profile"),
      ),
      DrawerItem(
        icon: Icons.home,
        text: "D A S H B O A R D",
        ontap: () => context.go("/"),
      ),
      DrawerItem(icon: Icons.settings, text: "S E T T I N G S", ontap: () {}),
      DrawerItem(icon: Icons.logout, text: "L O G O U T", ontap: () {}),
    ];
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
