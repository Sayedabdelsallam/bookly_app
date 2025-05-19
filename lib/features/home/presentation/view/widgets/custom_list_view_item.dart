import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constans/app_assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: const Color(0xFFC4C4C4),
        image: const DecorationImage(
          image: AssetImage(
            AppAssets.test,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}