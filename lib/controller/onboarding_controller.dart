// import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pharmacy/core/constant/rootes.dart';
import 'package:pharmacy/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  // ? next page button
  next();

  // ? move one clicke page
  onPageCahnged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int cruuentPage = 0;
  late PageController pageController;

  @override
  next() {
    cruuentPage++;

    if (cruuentPage >= onBoardingList.length) {
      // print("last page");
      Get.toNamed(AppRoute.login);
      // Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(
        cruuentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageCahnged(int index) {
    cruuentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
