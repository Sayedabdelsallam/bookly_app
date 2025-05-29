import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constans/color_pattele.dart';
import 'core/utils/bloc_observer.dart';
import 'features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/manger/newset _cubit/newset_books_cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
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
            BlocProvider(
              create: (context) {
                final cubit = FeaturedBooksCubit(getIt.get<HomeRepoImpl>());
                cubit.fetchFeaturedBooks();
                return cubit;
              },
            ),
            BlocProvider(
              create: (context) {
                final cubit = NewsetBooksCubit(getIt.get<HomeRepoImpl>());
                cubit.fetchNewestBooks();
                return cubit;
              },
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: AppColors.primaryColor,
              textTheme: GoogleFonts.montserratTextTheme(
                ThemeData.dark().textTheme,
              ),
            ),
          ),
        );
      },
    );
  }
}