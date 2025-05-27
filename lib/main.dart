import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_bppks_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newset%20_cubit/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Add this import

import 'core/constans/color_pattele.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) =>
                FeaturedBooksCubit(
                    getIt.get<HomeRepoImpl>(),
                ),),
            BlocProvider(create: (context) =>
                NewsetBooksCubit(
                    getIt.get<HomeRepoImpl>(),
                ),),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: AppColors.primaryColor,
              textTheme: GoogleFonts.montserratTextTheme(
                ThemeData
                    .dark()
                    .textTheme,
              ),
            ),
          ),
        );
      },
    );
  }
}
