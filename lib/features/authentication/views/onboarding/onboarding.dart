import 'package:flutter/material.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_next_button.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_page.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_skip.dart';
import 'package:giftella/utils/constants/image_strings.dart';
import 'package:giftella/utils/constants/text_strings.dart';

import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final OnBoardingController controller;

  @override
  void initState() {
    super.initState();
    controller = OnBoardingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) => setState(() {
              controller.updatePageIndicator(index);
            }),
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1
              ),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2
              ),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3
              ),
            ],
          ),

          /// Skip Button
          OnBoardingSkip(
            onSkip: () {
              controller.dotNavigationClick(2);
              setState(() {});
            },
          ),

          /// Dot Navigation Smooth Pager
          OnBoardingDotNavigation(
            controller: controller.pageController,
            onDotClicked: (index) {
              controller.dotNavigationClick(index);
              setState(() {});
            },
          ),
          /// Circular Button
          OnBoardingNextButton(
            onNext: () {
              final next = controller.nextPageIndex(maxIndex: 2);
              if (next == 2 && controller.currentPageIndex == 2) {
                Navigator.of(context).pushReplacementNamed('/login');
              } else {
                controller.dotNavigationClick(next);
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}





