import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: AppColors.kStar, size: 14.sp),
        SizedBox(width: 6.3.w),

        Text('$rating', style: AppTextStyles.textStyle16),
        SizedBox(width: 5.w),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($count)',
            style: AppTextStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
