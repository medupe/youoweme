import 'package:flutter/material.dart';

class AppSnackBar {
  static showSnackBar(String message, BuildContext context) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
