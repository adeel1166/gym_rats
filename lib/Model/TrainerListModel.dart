import 'package:flutter/material.dart';

class ColorsConfig {
  static const Color transred = Colors.redAccent;
  static const Color primaryblackColor = Colors.black;
  static const Color green = Colors.green;
}

class Trainer {
  final String name;
  final String message;
  final String imagePath;
  final bool isActive;

  Trainer({
    required this.name,
    required this.message,
    required this.imagePath,
    required this.isActive,
  });
}