import 'package:bookly_app/core/constans/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constans/styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedBooksListView(),
        SizedBox(height: 50.h),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
        SizedBox(height: 20.h),
        const BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ],
      ),
    );
  }
}

