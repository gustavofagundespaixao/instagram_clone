import 'dart:math';

import 'package:flutter/material.dart';

class AppRandomColor {
  static generate() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256), // R
      random.nextInt(256), // G
      random.nextInt(256), // B
      1.0, // Opacidade
    );
  }
}
