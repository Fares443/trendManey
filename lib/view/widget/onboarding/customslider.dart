// ignore_for_file: depend_on_referenced_packages, unused_import, sized_box_for_whitespace, deprecated_member_use

import 'package:trend_money1/controller/onboarding_controller.dart';
import 'package:trend_money1/data/datasource/static.dart';
import 'package:trend_money1/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
     
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  child: FittedBox(
                    fit:BoxFit .fill ,
                    child: Image.asset(
                      onBoardingList[i].image!,
                     
                       fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                Text(onBoardingList[i].title!,
                    style: Theme.of(context).textTheme.headline1),
                const SizedBox(height: 20),
          
                Container(
                    width: double.infinity,
                  alignment: Alignment.center,
                    child: Text(
                      
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ],
            ));
  }
}