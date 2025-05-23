import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constans/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 65.0.w),
          child: const CustomBookImage(),
        ),
        SizedBox(height: 40.h),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(),
          ],
        ),
        SizedBox(
          height: 37.h,
        ),
        const BookAction(),
      ],
    );
  }
}