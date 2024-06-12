import 'package:flutter/material.dart';

// Mock ColorsConfig class to simulate the provided colors.
class ColorsConfig {
  static const Color transred = Colors.redAccent;
  static const Color primaryColor = Colors.black;
  static const Color green = Colors.green;
}

// Define a Trainer model
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