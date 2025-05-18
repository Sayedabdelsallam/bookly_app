import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constans/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 50,
      ),
      child: Row(
        children: [
          Image.asset(AppAssets.logo, height: 20.h),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.white,
              size: 25.h,
            ),
          ),
        ],
      ),
    );
  }
}