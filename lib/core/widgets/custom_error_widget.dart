import 'package:bookly_app/core/constans/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage , style: Styles.textStyle18..copyWith(
      color: Colors.red,
    ),);
  }
}
