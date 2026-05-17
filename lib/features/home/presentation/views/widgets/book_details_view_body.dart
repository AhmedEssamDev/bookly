import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(horizontal: kHorisental30),
      child: Column(
           children:  [
           const CustomBookDetailsAppBar(),
            SizedBox(height: 33.h,),
            SizedBox(
              height: 224.h,
              child: CustomBookImage()),
              SizedBox(
                height: 43.h,
              ),
             const Text('The Jungle Book',
              style: AppTextStyles.textStyle30,),
              SizedBox(
                height: 6.h,
              ),
              Opacity(
                opacity: 0.7,
                child: Text('Rudyard Kipling',
                style: AppTextStyles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(
                height: 18.h,
              ),
             const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                height: 37.h,
              ),
             const BooksAction(),

           ],
      ),
    );
  }
}

