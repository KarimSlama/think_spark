import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class MeetingsIcon extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const MeetingsIcon({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.scheduleMeetingScreen, arguments: ideaResponse),
      child: CircularContainer(
        width: 35.w,
        height: 35.h,
        color: SparkColors.white,
        child: Icon(Iconsax.calendar, color: SparkColors.anakiwa),
      ),
    );
  }
}
