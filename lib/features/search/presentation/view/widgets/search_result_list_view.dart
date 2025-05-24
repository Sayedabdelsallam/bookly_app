import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/view/widgets/best_seller_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) => const BookListViewItem(),
      separatorBuilder: (context, index) => SizedBox(height: 20.h),
      itemCount: 10,
    );
  }
}