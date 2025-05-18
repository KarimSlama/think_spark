import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/notifications/controller/cubit/notifications_cubit.dart';
import 'package:think_spark/think_spark/screens/notifications/controller/cubit/notifications_state.dart';
import 'package:think_spark/think_spark/screens/notifications/widget/notification_slidable_item.dart';

class ListOfCardsWithScrollbar extends StatelessWidget {
  final ScrollController scrollController;
  final double scrollOffset;

  const ListOfCardsWithScrollbar({
    super.key,
    required this.scrollController,
    required this.scrollOffset,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsCubit, NotificationsState>(
      builder: (context, state) {
        if (context.read<NotificationsCubit>().notifications.isEmpty) {
          return Center(
              child: Lottie.asset(Assets.images.animation1744759242249));
        } else {
          return state.maybeWhen(
            notificationLoading: () => CircularProgressIndicator(),
            notificationSuccess: (notifications) {
              return ScrollbarTheme(
                data: ScrollbarThemeData(
                  trackColor: const WidgetStatePropertyAll(SparkColors.onahau),
                  thumbColor: const WidgetStatePropertyAll(SparkColors.blue),
                  radius: const Radius.circular(10),
                ),
                child: Scrollbar(
                  controller: scrollController,
                  thickness: 6,
                  thumbVisibility: true,
                  scrollbarOrientation: ScrollbarOrientation.right,
                  trackVisibility: true,
                  interactive: true,
                  child: ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsetsDirectional.only(
                      top: SparkSizes.sm,
                      bottom: SparkSizes.sm,
                      end: SparkSizes.md,
                    ),
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      return AnimatedBuilder(
                        animation: scrollController,
                        builder: (context, child) {
                          final itemPosition = index * 100.0;
                          final scrollRatio =
                              (scrollOffset - itemPosition) / 100;
                          final scale =
                              1.0 - (scrollRatio.abs() * 0.1).clamp(0.0, 0.1);
                          final opacity =
                              1.0 - (scrollRatio.abs() * 0.3).clamp(0.0, 0.3);

                          return Transform.scale(
                            scale: scale,
                            child: Opacity(
                              opacity: opacity,
                              child: child,
                            ),
                          );
                        },
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder: (child, animation) =>
                              SizeTransition(
                            sizeFactor: animation,
                            axis: Axis.vertical,
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          ),
                          child: NotificationSlidableItem(
                            key: ValueKey(notifications[index]['id']),
                            index: index,
                            notifications: notifications,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
            notificationError: (error) => Text(error),
            orElse: () => SizedBox(),
          );
        }
      },
    );
  }
}
