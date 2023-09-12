import 'package:flutter/material.dart';
// import 'package:food_app_onboard/screens/login_page.dart';
import 'package:food_app_onboard/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

import '../controllers/onboard_controller.dart';

class OnboardPage extends StatelessWidget {
  OnboardPage({super.key});
  final OnboardController controller = OnboardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: controller.pagecontroller,
                onPageChanged: controller.currentPageIndex,
                itemCount: controller.onboardingPages.length,
                itemBuilder: ((context, index) {
                  return Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(controller.onboardingPages[index].image),
                          SizedBox(
                            height: 25.0,
                          ),
                          Text(
                            controller.onboardingPages[index].title,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              controller.onboardingPages[index].description,
                              style:
                                  TextStyle(fontSize: 18.0, color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                  );
                })),
            Positioned(
              bottom: 22.0,
              left: 20.0,
              child: Row(
                children: List.generate(
                    controller.onboardingPages.length,
                    (index) => Obx(() {
                          return Container(
                            margin: EdgeInsets.all(4),
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                                color: controller.currentPageIndex == index
                                    ? Colors.red
                                    : Colors.grey,
                                shape: BoxShape.circle),
                          );
                        })),
              ),
            ),
            Positioned(
                bottom: 20.0,
                right: 20.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.red.shade400,
                  elevation: 0.0,
                  onPressed: () {
                    controller.isLastPage
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => WelcomePage())))
                        : controller.pagecontroller.nextPage(
                            duration: 300.milliseconds, curve: Curves.ease);
                  },
                  child: Obx(() {
                    return Text(controller.isLastPage ? 'Start' : 'Next');
                  }),
                )),
            Positioned(
                right: 20.0,
                child: TextButton(
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.red.shade400),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
