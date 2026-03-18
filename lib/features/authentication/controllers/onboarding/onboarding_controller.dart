import 'package:flutter/cupertino.dart';

class OnBoardingController {
  OnBoardingController() : pageController = PageController();

  final PageController pageController;
  int currentPageIndex = 0;

  void updatePageIndicator(int index) {
    currentPageIndex = index;
  }

  void dotNavigationClick(int index) {
    currentPageIndex = index;
    pageController.jumpToPage(index);
  }

  int nextPageIndex({required int maxIndex}) {
    if (currentPageIndex >= maxIndex) return maxIndex;
    return currentPageIndex + 1;
  }

  void dispose() {
    pageController.dispose();
  }
}