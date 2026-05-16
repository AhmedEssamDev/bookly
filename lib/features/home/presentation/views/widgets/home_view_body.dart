import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_llist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

