import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bookly/core/utils/constants.dart';

import 'Features/Splash/presentation/view/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: PrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
