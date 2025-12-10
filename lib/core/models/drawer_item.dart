import 'package:flutter/material.dart';

class DrawerItem {
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  const DrawerItem({
    required this.text,
    required this.icon,
    required this.ontap,
  });
}
