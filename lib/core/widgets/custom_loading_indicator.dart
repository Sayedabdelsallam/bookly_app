import 'package:flutter/material.dart';

import '../constans/color_pattele.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.whiteColor,
      ),
    );
  }
}