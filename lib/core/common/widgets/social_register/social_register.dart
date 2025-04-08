import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/gen/assets.gen.dart';

class SocialRegister extends StatelessWidget {
  const SocialRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.icons.google,
            width: 38.w,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.facebook_outlined,
            color: SparkColors.blue,
            size: 38.sp,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.apple,
            size: 38.sp,
          ),
        ),
      ],
    );
  }
}
