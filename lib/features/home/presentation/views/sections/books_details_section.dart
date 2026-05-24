import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        SizedBox(height: 25.h),
        SizedBox(
          height: 243.h,
          child: CustomBookImage(
            imageURL: bookModel.volumeInfo.imageLinks?.thumbnail,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: AppTextStyles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4.h),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?.first ?? 'Unknown Author',
            style: AppTextStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 13.h),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? 0.0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        SizedBox(height: 30.h),
        const BooksAction(),
      ],
    );
  }
}
