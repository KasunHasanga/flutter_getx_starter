import 'package:flutter/material.dart';

class CustomTextTheme {
  //! Default Font is GoogleFonts.Ubuntu You can change it as your Need

  static const _textColorLight =
      Color(0xFF000000); // Light Theme Default Text Color
  static const _textColorDark =
      Color(0xFF000000); // Light Theme Default Text Color

  static TextTheme get textThemeLight {
    return _textTheme(textColor: _textColorLight);
  }

  static TextTheme get textThemeDark {
    return _textTheme(textColor: _textColorDark);
  }

  // Private Method For Text Theme so that we can change the vale for Both Dark And Light Theme
  static TextTheme _textTheme({required Color textColor}) {
    // const FontWeight _light = FontWeight.w300;
    // const FontWeight _medium = FontWeight.w500;
    // const FontWeight _regular = FontWeight.w400;

    return TextTheme(
      titleMedium: TextStyle(color: textColor),
      titleSmall: TextStyle(color: textColor),
    );
  }
}
