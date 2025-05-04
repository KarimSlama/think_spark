import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class FloatingWidget extends StatelessWidget {
  final Widget mainScreenWidget;
  const FloatingWidget({super.key, required this.mainScreenWidget});

  @override
  Widget build(BuildContext context) {
    return FloatingDraggableWidget(
      mainScreenWidget: mainScreenWidget,
      floatingWidget: GestureDetector(
        onTap: () {
          Loaders.sparkToast(message: 'floating');
        },
        child: CircularContainerShadow(
          icon: Icon(Iconsax.messages_2, color: SparkColors.doggerBlue),
          padding: SparkSizes.md,
        ),
      ),
      floatingWidgetWidth: 60,
      floatingWidgetHeight: 60,
    );
  }
}
