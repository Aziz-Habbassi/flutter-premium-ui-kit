import 'package:flutter/material.dart';

class MoonModel {
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  const MoonModel({
    required this.text,
    required this.icon,
    required this.ontap,
  });
}
