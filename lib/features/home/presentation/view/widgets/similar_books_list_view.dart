import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(
          imageUrl: ' https://media.licdn.com/dms/image/v2/D4D03AQF1iR530z2UZw/profile-displayphoto-shrink_800_800/B4DZVD5M1pG4Ak-/0/1740600853236?e=1753920000&v=beta&t=-ezbb1X-69e3x4TnQYkMDlawNoCjkZVHs0x-3Pxvc74',
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount: 5,
      ),
    );
  }
}