import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_llist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 52.h,),
          Text('Best Seller',
          style: AppTextStyles.textStyle18,),
          SizedBox(height: 20.h,),
          BestSellerListViewItem(),
         ],
      ),
    );
  }
}

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
        Column(
          children: [
           SizedBox(
            width: 200.w,
             child: Text('Harry Potter and the Goblet of Fire',
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
             style: AppTextStyles.textStyle20.copyWith(
             fontFamily: kGtSectraFine,
             ),),
           )
          ],
        )
      ],
    );
  }
}