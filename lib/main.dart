import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Add this
import 'package:google_fonts/google_fonts.dart';

import 'core/constans/color_pattele.dart';

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
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.primaryColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme, // This will use dark theme text styles
            ),),
        );
      },
    );
  }
}