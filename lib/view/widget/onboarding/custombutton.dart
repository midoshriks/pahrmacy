import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy/controller/onboarding_controller.dart';
import 'package:pharmacy/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 0,
        ),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child: const Text("Continue"),
      ),
    );
  }
}
