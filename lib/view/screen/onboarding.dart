// ignore_for_file: depend_on_referenced_packages, avoid_unnecessary_containers

import 'package:trend_money1/controller/onboarding_controller.dart';
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
      
        body: SafeArea(
        
          child: 
            Center(
              child: Container(
                
                child: Row(
                 
                  children: [
                   
               
                    Expanded(
                      flex: 7,
                      child: Container(
                         padding: const EdgeInsets.all(1),
                        child: Column(children: [
                               const SizedBox(height: 5,width: 10),
                          const Expanded(
                            flex:2,
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
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          ),
        );
  }
}