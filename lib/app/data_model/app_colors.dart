import 'package:flutter/material.dart';

abstract class AppColors {
  // ベース色 白 or 黒
  Color get base;
  // 基本色
  Color get primary;
  // 基本色補助（同系色やや重い色）
  Color get primaryVariant;
  // 補助色（基本色の補色系の色）
  Color get accent;

  Color get primaryText;

  Color get accentText;

  Color get warning;

  // MaterialColor createMaterialColor(Color color) {
  //   List strengths = <double>[.05];
  //   final swatch = <int, Color>{};
  //   final int r = color.red, g = color.green, b = color.blue;

  //   for (int i = 1; i < 10; i++) {
  //     strengths.add(0.1 * i);
  //   }
  //   strengths.forEach((strength) {
  //     final double ds = 0.5 - strength;
  //     swatch[(strength * 1000).round()] = Color.fromRGBO(
  //       r + ((ds < 0 ? r : (255 - r)) * ds).round(),
  //       g + ((ds < 0 ? g : (255 - g)) * ds).round(),
  //       b + ((ds < 0 ? b : (255 - b)) * ds).round(),
  //       1,
  //     );
  //   });
  //   return MaterialColor(color.value, swatch);
  // }
}

class AppColorsPeach extends AppColors {
  @override
  Color get accent => Color(0xFF48469F);

  @override
  Color get base => Color(0xffffffff);

  @override
  Color get primary => Color(0xFFD1C2D7);

  @override
  Color get primaryVariant => Color(0xFFC786DE);

  @override
  Color get accentText => Color(0xff000000);

  @override
  Color get primaryText => Color(0xffffffff);

  @override
  Color get warning =>  Color(0xffbb2020);
}

// class AppColorsPeachDark extends AppColors {
//   @override
//   Color get accent => Color(0xFF3423C4);

//   @override
//   Color get base => Color(0xFF202020);

//   @override
//   Color get primary => Color(0xFFFF13E0);

//   @override
//   Color get primaryVariant => Color(0xFFE023C4);
// }

// class AppThemeLime extends AppTheme {
//   @override
//   ThemeData getData() {
//     throw UnimplementedError();
//   }
// }

// class AppThemeGrape extends AppTheme {
//   @override
//   ThemeData getData() {
//     throw UnimplementedError();
//   }
// }
