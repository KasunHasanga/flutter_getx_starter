import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ThemeService {
  static final _box = GetStorage('MyPref');
  final _key = 'isDarkMode';
  final _keyAuto = 'autoMode';

  /// Get isDarkMode info from local storage and return ThemeMode
  ThemeMode get theme {
    if (_box.read(_key) == null) {
      Get.changeThemeMode(ThemeMode.system);
      _saveAutoThemeToBox(true);

      return ThemeMode.system;
    } else if (_box.read(_keyAuto) == true) {
      _saveAutoThemeToBox(true);
      return ThemeMode.system;
    } else {
      _saveAutoThemeToBox(false);
      Get.changeThemeMode(
          _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light);
      return _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
    }
  }

  bool currentThemeIsDark() {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark ? true : false;
  }

  bool getAutoThemeStatus() => _loadAutoThemeFromBox();

  bool getThemeStatus() => _loadThemeFromBox();

  /// Load isDArkMode from local storage and if it's empty, returns false (that means default theme is light)
  bool _loadThemeFromBox() {
    return _box.read(_key) ?? false;
  }

  /// Load Auto theme mode
  bool _loadAutoThemeFromBox() => _box.read(_keyAuto) ?? false;

  /// Save isDarkMode to local storage
  _saveThemeToBox(bool isDarkMode) {
    //_box.write(_key, isDarkMode);
    _box.write(_key, isDarkMode);
  }

  /// Save Auto theme mode to local storage
  _saveAutoThemeToBox(bool isAutoMode) => _box.write(_keyAuto, isAutoMode);

  /// Switch theme to Auto mode and save to local storage
  void switchAutoTheme() {
    if (_loadAutoThemeFromBox()) {
      Get.changeThemeMode(ThemeMode.light);
      _saveAutoThemeToBox(false);
      _saveThemeToBox(true);
    } else {
      Get.changeThemeMode(ThemeMode.system);
      _saveAutoThemeToBox(true);
      _saveThemeToBox(true);
    }
  }

  /// Switch theme and save to local storage
  void switchTheme(bool isDark) {
    if (isDark) {
      Get.changeThemeMode(ThemeMode.dark);
      _saveThemeToBox(true);
    } else {
      Get.changeThemeMode(ThemeMode.light);
      _saveThemeToBox(false);
    }
    _saveAutoThemeToBox(false);
  }
}
