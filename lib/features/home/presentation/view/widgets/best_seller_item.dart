import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constans/app_assets.dart';
import '../../../../../core/constans/styles.dart';
import '../../../../../res/font_res.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Container(
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: const Color(0xFFC4C4C4),
                image: const DecorationImage(
                  image: AssetImage(
                    AppAssets.test,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 30.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      'Harry Potter and the Goblet of Fire - J. K. Rowling (2005)',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: FontRes.GT_SECTRA_FINE_REGULAR,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'J. K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Text(
                        '29.99 \$',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}