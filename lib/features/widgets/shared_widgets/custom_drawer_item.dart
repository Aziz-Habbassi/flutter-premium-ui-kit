import 'package:appadaptiveui/core/models/drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItem});
  final DrawerItem drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: drawerItem.ontap,
      leading: Icon(drawerItem.icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentGeometry.centerLeft,
          child: Text(drawerItem.text),
        ),
      ),
    );
  }
}
