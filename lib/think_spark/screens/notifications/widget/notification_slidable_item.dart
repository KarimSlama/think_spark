import 'package:fade_out_particle/fade_out_particle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:think_spark/think_spark/screens/notifications/controller/cubit/notifications_cubit.dart';
import 'package:think_spark/think_spark/screens/notifications/widget/notification_card_item.dart';
import 'package:think_spark/think_spark/screens/notifications/widget/slidable_action_icons.dart';


class NotificationSlidableItem extends StatefulWidget {
  final int index;
  final List<Map<String, dynamic>> notifications;

  const NotificationSlidableItem({
    super.key,
    required this.index,
    required this.notifications,
  });

  @override
  State<NotificationSlidableItem> createState() =>
      _NotificationSlidableItemState();
}

class _NotificationSlidableItemState extends State<NotificationSlidableItem> {
  bool _disappear = false;

  late final String notificationId;

  @override
  void initState() {
    super.initState();
    notificationId = widget.notifications[widget.index]['id'];
  }

  void _handleDelete() {
    setState(() {
      _disappear = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: FadeOutParticle(
        disappear: _disappear,
        onAnimationEnd: () {
          context
              .read<NotificationsCubit>()
              .removeNotificationById(notificationId);
        },
        child: Slidable(
          key: ValueKey(notificationId),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            extentRatio: 0.15,
            children: [
              SlidableActionIcons(
                onDelete: _handleDelete,
              )
            ],
          ),
          child: NotificationCardItem(
            notifications: widget.notifications,
            index: widget.index,
          ),
        ),
      ),
    );
  }
}