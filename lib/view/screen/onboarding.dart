import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy/controller/onboarding_controller.dart';
import 'package:pharmacy/view/widget/onboarding/custombutton.dart';
import 'package:pharmacy/view/widget/onboarding/customslider.dart';
import 'package:pharmacy/view/widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
              flex: 3,
              //? this swip &  [onBoardingList => value [static]]
              child: CustomSliderOnBoarding(),
            ),
            //? make poup dotcontroller swip screen  app
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotControllerOnBoarding(),
                  //? button swip screen  app
                  Spacer(
                    flex: 2,
                  ),
                  //? @includ widget button
                  CustomButtonOnBoarding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
