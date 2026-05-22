import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        SizedBox(height: 25.h),
        SizedBox(height: 243.h, child: CustomBookImage(
          imageURL:'https://upload.wikimedia.org/wikipedia/ar/thumb/0/00/%D8%BA%D9%84%D8%A7%D9%81_%D8%B1%D9%88%D8%A7%D9%8A%D8%A9_%D8%A3%D9%85%D8%A7%D8%B1%D9%8A%D8%AA%D8%A7.jpeg/250px-%D8%BA%D9%84%D8%A7%D9%81_%D8%B1%D9%88%D8%A7%D9%8A%D8%A9_%D8%A3%D9%85%D8%A7%D8%B1%D9%8A%D8%AA%D8%A7.jpeg'
        )),
        SizedBox(height: 30.h),
        const Text('The Jungle Book', style: AppTextStyles.textStyle30),
        SizedBox(height: 4.h),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: AppTextStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 13.h),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 30.h),
        const BooksAction(),
      ],
    );
  }
}
