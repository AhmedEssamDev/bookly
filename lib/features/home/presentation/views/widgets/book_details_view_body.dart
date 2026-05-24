import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/sections/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/sections/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override

  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: kHorisental30),
            child: Column(
              children: [
                BookDetailsSection(bookModel: bookModel),
                Expanded(child: SizedBox(height: 35.h)),
                const SimilarBooksSection(),
                SizedBox(height: 35.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
