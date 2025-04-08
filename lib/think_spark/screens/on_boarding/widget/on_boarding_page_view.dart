import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/think_spark/screens/on_boarding/model/boarding_model.dart';
import 'package:think_spark/think_spark/screens/on_boarding/widget/on_boarding_item.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: (page) {
          setState(() {
            Constants.currentPage = page;
          });
        },
        controller: Constants.pageController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            OnBoardingItems(boardingModel: boarding[index]),
        itemCount: boarding.length,
      ),
    );
  }

  @override
  void dispose() {
    Constants.pageController.dispose();
    super.dispose();
  }
}
