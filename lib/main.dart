import 'package:coffe_shop/data/constant/color.dart';
import 'package:coffe_shop/page/intro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffe Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      home: const IntroPage(),
    );
  }
}
