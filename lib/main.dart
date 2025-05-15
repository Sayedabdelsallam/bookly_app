import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Add this
import 'package:get/get.dart';

import 'core/constans/color_pattele.dart';
import 'features/splash/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Default design size (adjust based on your design)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData().copyWith(
            scaffoldBackgroundColor: AppColors.primaryColor,
          ),
          home: child,
        );
      },
      child: const SplashView(), // Your initial screen
    );
  }
}