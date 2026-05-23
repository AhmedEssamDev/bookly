import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_llist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: REdgeInsets.symmetric(horizontal: kHorisental30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 52.h),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: kHorisental30),
                child: Text('Newest Books', style: AppTextStyles.textStyle18),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: kHorisental30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
