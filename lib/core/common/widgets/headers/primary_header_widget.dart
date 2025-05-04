import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/common/widgets/curved_edges/primary_edges_widget.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class PrimaryHeaderWidget extends StatelessWidget {
  final Widget child;
  final String title;
  const PrimaryHeaderWidget(
      {super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return PrimaryCurvedEdgeWidget(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: SparkColors.linear),
        ),
        padding: EdgeInsets.zero,
        child: SizedBox(
          height: 200.h,
          child: Stack(
            children: [
              Positioned(
                top: -50,
                left: -50,
                child: CircularContainer(
                  width: 150,
                  height: 150,
                  color: SparkColors.white.withValues(alpha: .1),
                  radius: 75,
                ),
              ),
              Positioned(
                top: -30,
                right: -30,
                child: CircularContainer(
                  width: 180.w,
                  height: 180.h,
                  color: SparkColors.white.withValues(alpha: .1),
                  radius: 100,
                ),
              ),
              SparkAppBar(
                showBackArrow: true,
                title: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: SparkColors.white),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
