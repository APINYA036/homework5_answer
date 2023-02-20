//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xFFEE4D4E,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFEE4D4E), //10%
      100: Color(0xFFEE4D4E), //20%
      200: Color(0xFFEE4D4E), //30%
      300: Color(0xFFEE4D4E), //40%
      400: Color(0xFFEE4D4E), //50%
      500: Color(0xFFEE4D4E), //60%
      600: Color(0xFFEE4D4E), //70%
      700: Color(0xFFEE4D4E), //80%
      800: Color(0xFFEE4D4E), //90%
      900: Color(0xFFEE4D4E), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
