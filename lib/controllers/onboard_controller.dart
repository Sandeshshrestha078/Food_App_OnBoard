import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:get/utils.dart';
import '../models/onboard_model.dart';
import 'package:get/get.dart';

// import '../screens/login_page.dart';

class OnboardController {
  var currentPageIndex = 0.obs;
  bool get isLastPage => currentPageIndex.value == onboardingPages.length - 1;
  var pagecontroller = PageController();

  fordwardAction() {
    if (isLastPage) {
    } else
      pagecontroller.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardInfo> onboardingPages = [
    OnboardInfo(
        image: 'assets/images/fastDelivery.jpg',
        title: '30 Minute Delivery',
        description:
            'Food is any substance consumed to provide nutritional support for an organism.Food is usually of plant animal'),
    OnboardInfo(
        image: 'assets/images/orderFood.jpg',
        title: 'Order your favourites',
        description:
            "When you oder Eat Street, we'll hook you up with exclusive coupons,special sand rewards."),
    OnboardInfo(
        image: 'assets/images/easyPayment.jpg',
        title: "Easy Payment",
        description:
            "With our easy payment process, you can order your favorite food making your dining experience effortless and enjoyable.")
  ];

  //welcome page image
  final String welcomepageimage = "assets/images/welcomescreen.jpg";
}
