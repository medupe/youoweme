import 'package:flutter/material.dart';

class AppSnackBar {
  static showSnackBar(String message, BuildContext context) async {
    final snackBar = SnackBar(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
