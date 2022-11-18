import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_theme/json_theme.dart';

final themeNotifierProvider =
    StateNotifierProvider.autoDispose<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(ThemeData.dark()) {
    getTheme();
  }

  void getTheme() async {
    final themeStr =
        await rootBundle.loadString('assets/configs/uome_theme.json');
    final themeJson = jsonDecode(themeStr);
    state = ThemeDecoder.decodeThemeData(themeJson)!;
  }
}
