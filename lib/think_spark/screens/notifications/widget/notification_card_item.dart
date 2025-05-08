import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class NotificationCardItem extends StatelessWidget {
  final int index;
  final List<Map<String, dynamic>> notifications;
  const NotificationCardItem(
      {super.key, required this.index, required this.notifications});

  @override
  Widget build(BuildContext context) {
    final notification = notifications[index];
    final title = notification['title'] ?? 'No Title';
    final user = notification['user'] ?? 'Unknown User';

    return CircularContainerShadow(
      width: double.infinity,
      radius: 25,
      padding: SparkSizes.sm,
      widget: Row(
        spacing: SparkSizes.lg,
        children: [
          CircularContainerShadow(
            widget: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: GestureDetector(
                child:
                    Icon(Iconsax.profile_2user, color: SparkColors.doggerBlue),
              ),
            ),
            padding: SparkSizes.md,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user,
                  style: Theme.of(context).textTheme.titleMedium!.apply(
                        color: SparkColors.blue,
                      ),
                ),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: SparkHelperFunctions.isDark(context)
                            ? SparkColors.light.withValues(alpha: .7)
                            : SparkColors.darkGrey,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
