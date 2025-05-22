import 'package:flutter/material.dart';

import '../../../../../core/constans/color_pattele.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: AppColors.whiteColor,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ), text: '54',
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 17,
              backgroundColor: Color(0xFFEF8262),
              textColor: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ), text: 'Free Preview',
            ),
          ),
        ],
      ),
    );
  }
}