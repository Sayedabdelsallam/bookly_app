import 'package:bookly_app/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constans/styles.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          SizedBox(height: 20.h),
          Text(
            'Result :',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20.h),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}


