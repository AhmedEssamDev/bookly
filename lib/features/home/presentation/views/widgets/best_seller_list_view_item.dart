import 'package:bookly/core/router/app_router_keys.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouterKeys.bookDetails, extra: book);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 105.0.h,
            child: CustomBookImage(imageURL: book.volumeInfo.imageLinks?.thumbnail)
          ),
          SizedBox(width: 30.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200.w,
                  child: Text(
                    book.volumeInfo.title?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  book.volumeInfo.authors?[0]?? '',
                  style: AppTextStyles.textStyle14.copyWith(),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Text(
                      'FREE',
                      style: AppTextStyles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookRating(rating: book.volumeInfo.averageRating ?? 0.0,
                     count: book.volumeInfo.ratingsCount ?? 0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
