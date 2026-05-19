import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorisental30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 18.h),
          Text('Search Result', style: AppTextStyles.textStyle18),
          SizedBox(height: 16.h),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
