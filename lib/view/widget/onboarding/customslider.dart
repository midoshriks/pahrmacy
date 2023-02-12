import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy/controller/onboarding_controller.dart';
import 'package:pharmacy/core/constant/color.dart';
import 'package:pharmacy/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    //? this swip &  [onBoardingList => value [static]]
    return PageView.builder(
      //* function controller getx
      controller: controller.pageController,
      onPageChanged: (value) {
        // print(value); view terminal numper page
        controller.onPageCahnged(value);
      },
      //* function controller getx
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(height: 60),

          // ? this text for title
          Text(
            onBoardingList[index].title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 60),
          // ? this view for Images

          Image.asset(
            onBoardingList[index].image!,
            width: 250,
            height: 280,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 40),

          // ? this text for body
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[index].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 2,
                color: AppColor.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
