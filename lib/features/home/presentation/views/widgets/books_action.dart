import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'FREE',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                bottomLeft: Radius.circular(12.r),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              fontSize: 16.sp,
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18.r),
                bottomRight: Radius.circular(18.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
