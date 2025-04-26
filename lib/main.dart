import 'package:bookly_app_student/constants.dart';
import 'package:bookly_app_student/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
