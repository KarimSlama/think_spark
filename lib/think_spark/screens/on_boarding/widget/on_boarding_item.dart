import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spacing.dart';
import 'package:think_spark/think_spark/screens/on_boarding/model/boarding_model.dart';
import 'package:lottie/lottie.dart';

class OnBoardingItems extends StatelessWidget {
  final BoardingModel boardingModel;

  const OnBoardingItems({super.key, required this.boardingModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        spacing: 14.h,
        children: [
          Lottie.asset(boardingModel.image),
          verticalSpace(20),
          Text(
            textAlign: TextAlign.center,
            boardingModel.title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 23.sp,
                ),
          ),
          Text(
            textAlign: TextAlign.center,
            boardingModel.body,
          ),
        ],
      ),
    );
  }
}
