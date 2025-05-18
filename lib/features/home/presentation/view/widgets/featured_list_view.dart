import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: SizedBox(
        height: 165.h,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const FeaturedListViewItem(),
          separatorBuilder: (context, index) => SizedBox(width: 15.w),
          itemCount: 5,
        ),
      ),
    );
  }
}