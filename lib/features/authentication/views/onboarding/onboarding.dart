import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_next_button.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_page.dart';
import 'package:giftella/features/authentication/views/onboarding/widgets/onboarding_skip.dart';
import 'package:giftella/utils/constants/image_strings.dart';
import 'package:giftella/utils/constants/text_strings.dart';

import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1
              ),
              onBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2
              ),
              onBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation Smooth Pager
          const OnBoardingDotNavigation(),
          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}





