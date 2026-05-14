import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.kLogo,
            height: 24.h,
            width: 24.w,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon:  FaIcon(FontAwesomeIcons.magnifyingGlass, size: 24.r),
          ),
        ],
      ),
    );
  }
}