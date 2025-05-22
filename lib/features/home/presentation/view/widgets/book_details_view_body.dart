import 'package:bookly_app/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                SizedBox(height: 5.h),
                const BookDetailsSection(),
                Expanded(child: SizedBox(height: 50.h,)),
                const SimilarBooksSection(),
                SizedBox(height: 40.h,),
              ],
            ),
          ) ,
        ),
      ],
    );
  }
}










