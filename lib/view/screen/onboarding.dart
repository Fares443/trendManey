// ignore_for_file: depend_on_referenced_packages

import 'package:trend_money1/controller/onboarding_controller.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/view/widget/onboarding/custombutton.dart';
import 'package:trend_money1/view/widget/onboarding/customslider.dart';
import 'package:trend_money1/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
          //  const SizedBox(height: 20,),
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                   CustomDotControllerOnBoarding(),
                    Spacer(flex: 1),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}