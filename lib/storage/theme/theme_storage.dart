import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeStorage {
  final SharedPreferences _prefs;

  ThemeStorage({
    required SharedPreferences prefs,
  }) : _prefs = prefs;

  ThemeMode? getThemeMode() {
    final storedName = _prefs.getString(
      ThemeStorageKeys.mode.key,
    );

    if (storedName?.isEmpty ?? true) return null;

    return ThemeMode.values.firstWhereOrNull(
      (themeMode) => themeMode.name == storedName,
    );
  }

  Future<void> saveThemeMode({
    required ThemeMode mode,
  }) {
    return _prefs.setString(
      ThemeStorageKeys.mode.key,
      mode.name,
    );
  }
}

enum ThemeStorageKeys {
  mode('theme_mode');

  final String key;

  const ThemeStorageKeys(this.key);
}
