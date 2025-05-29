import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constans/color_pattele.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
           Expanded(
            child: CustomButton(
              backgroundColor: AppColors.whiteColor,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ), text: 'Free', onPressed: ()async
            {
              if(!await launchUrl(Uri.parse(bookModel.accessInfo!.webReaderLink!))) {
                  throw 'Could not launch ${bookModel.accessInfo!.webReaderLink!}';
                }
            },
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async
              {
                if(!await launchUrl(Uri.parse(bookModel.volumeInfo.previewLink!))) {
                  throw 'Could not launch ${bookModel.volumeInfo.previewLink}';
                }
              },
              fontSize: 17,
              backgroundColor: const Color(0xFFEF8262),
              textColor: AppColors.whiteColor,
              borderRadius: const BorderRadius.only(
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