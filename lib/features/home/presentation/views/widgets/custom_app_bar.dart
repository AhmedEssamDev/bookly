import 'package:bookly/core/router/app_router_keys.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(top: 40, bottom: 20,),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.kLogo,
            height: 16.h,
            width:  75.w,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouterKeys.search);
            },
            icon:  FaIcon(FontAwesomeIcons.magnifyingGlass, size: 22.r),
          ),
        ],
      ),
    );
  }
}