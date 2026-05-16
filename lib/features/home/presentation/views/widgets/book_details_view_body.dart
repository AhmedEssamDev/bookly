import 'package:bookly/core/utils/constants.dart';
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
            CustomBookDetailsAppBar(),
            SizedBox(height: 33.h,),
            SizedBox(
              height: 224.h,
              child: CustomBookImage()),
           ],
      ),
    );
  }
}

