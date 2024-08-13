
import 'package:aksamedia_test/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 280.0),
        child: SmoothPageIndicator(
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.white,
            dotHeight: 4,
            dotWidth: 4,
            dotColor: Colors.white,
          ),
          controller: controller.pageController, 
          count: 3
        ),
      ),
    );
  }
}