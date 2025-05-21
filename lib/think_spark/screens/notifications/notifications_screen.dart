import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_bar_input_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/notifications/widget/list_of_cards_with_scrollbar.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.notification),
        actions: const [
          ProfileImageCircular(
            width: 40,
            height: 40,
          ),
        ],
        leadingOnPressed: () =>
            context.pushNamed(Routes.investorNavigationMenu),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SparkSizes.ms),
        child: Column(
          spacing: SparkSizes.defaultSpace,
          children: [
            SparkBarInputField(
                controller: TextEditingController(),
                hintText: SparkString.searchForNotification),
            Expanded(
                child: ListOfCardsWithScrollbar(
                    scrollController: _scrollController,
                    scrollOffset: _scrollOffset))
          ],
        ),
      ),
    );
  }
}
