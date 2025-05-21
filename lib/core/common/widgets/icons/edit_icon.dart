import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class EditIcon extends StatelessWidget {
  final IdeaResponse ideaResponse;
  final VoidCallback? onTap;
  const EditIcon({super.key, required this.ideaResponse, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap ?? () => context.pushNamed(Routes.editClueScreen, arguments: ideaResponse),
      child: CircularContainer(
        width: 35.w,
        height: 35.h,
        color: SparkColors.white,
        child: Icon(Iconsax.edit, color: SparkColors.blue),
      ),
    );
  }
}
