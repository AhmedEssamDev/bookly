import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 105.0.h,
      width: 70.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: const DecorationImage(
          image: NetworkImage(
            'https://al-balsam.com/cdn/shop/files/opal-book.jpg?v=1760355766'
           ),
          fit: BoxFit.fill,
        ),
      ),
    ),
        SizedBox(width: 30.w,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SizedBox(
              width: 200.w,
               child: Text('Harry Potter and the Goblet of Fire',
               maxLines: 2,
               overflow: TextOverflow.ellipsis,
               style: AppTextStyles.textStyle20.copyWith(
               fontFamily: kGtSectraFine,
               ),),
             ),
             SizedBox(height: 3.h,),
             Text('J.K. Rowling',
             style: AppTextStyles.textStyle14.copyWith()), 
             SizedBox(height: 3.h,),
             Row(
              children: [
                Text('19.99 €',
                style: AppTextStyles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
                ),),
                Spacer(),
                BookRating()
              ],
             ),
            ],
          ),
        )
      ],
    );
  }
}


