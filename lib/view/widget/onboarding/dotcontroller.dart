import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy/controller/onboarding_controller.dart';
import 'package:pharmacy/core/constant/color.dart';
import 'package:pharmacy/data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 300),
              width: controller.cruuentPage == index ? 30 : 13,
              height: 13,
              decoration: BoxDecoration(
                color: controller.cruuentPage >= index ? AppColor.twoColor : AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
