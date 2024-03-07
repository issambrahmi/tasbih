import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTheme {
  static ThemeData lightTheme = Get.theme.copyWith(
    scaffoldBackgroundColor: Colors.white,
  );
  static ThemeData darkTheme = Get.theme.copyWith(
    scaffoldBackgroundColor: const Color(0xff232D3F),
  );
}
