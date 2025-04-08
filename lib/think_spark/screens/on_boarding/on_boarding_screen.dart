import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/on_boarding/model/boarding_model.dart';
import 'package:think_spark/think_spark/screens/on_boarding/widget/on_boarding_item.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool isLast = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          SvgPicture.asset(Assets.images.lightCircle),
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                      if (page == boarding.length - 1)
                        isLast = true;
                      else
                        isLast = false;
                    });
                  },
                  itemBuilder: (context, index) =>
                      OnBoardingItems(boardingModel: boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: boarding.length,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: SparkColors.doggerBlue,
                      height: 35.h,
                      width: 2.w),
                  dotDecoration: DotDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: SparkColors.onahau,
                      height: 22.h,
                      width: 2.w),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      start: _currentPage >= 0
                          ? BorderSide(color: SparkColors.darkBlue, width: 2.w)
                          : BorderSide(color: SparkColors.orange),
                      top: _currentPage >= 1
                          ? BorderSide(color: SparkColors.darkBlue, width: 2.w)
                          : BorderSide(color: SparkColors.orange),
                      end: _currentPage >= 2
                          ? BorderSide(color: SparkColors.darkBlue, width: 2.w)
                          : BorderSide(color: SparkColors.orange),
                      bottom: _currentPage >= 3
                          ? BorderSide(color: SparkColors.darkBlue, width: 2.w)
                          : BorderSide(color: SparkColors.orange),
                    ),
                    // borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (_currentPage < 3) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else if (_currentPage == boarding.length - 1) {
                        context.pushNamed(Routes.signOptionScreen);
                      }
                    },
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: WidgetStatePropertyAll(Size(150.w, 55.h)),
                      shape: WidgetStateProperty.all(
                        BeveledRectangleBorder(),
                      ),
                    ),
                    child: Text(
                        isLast ? SparkString.letsStart : SparkString.continue_),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
