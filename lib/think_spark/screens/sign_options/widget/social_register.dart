import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';
import 'package:think_spark/gen/assets.gen.dart';

class SocialRegister extends StatelessWidget {
  const SocialRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.apple,
                size: 45.sp,
              )),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.icons.google,
              width: 40.w,
            ),
          ),
        ),

        Expanded(
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook_outlined,
                color: AppColors.blue,
                size: 40.sp,
              )),
        ),
      ],
    );
  }
}
