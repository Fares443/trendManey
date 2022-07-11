// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/routes.dart';

class Ifshert extends StatelessWidget {
  const Ifshert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarscreen('الشروط والاحكام'),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              // height: 500,
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                  'assets/images/شروط من النوع الفاخر.psd1333.png',
                  width: double.infinity,
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)),
                padding: const EdgeInsets.all(10),
                color: AppColor.primaryColor,
                onPressed: () {
                  Get.toNamed(AppRoute.vip);
                  
                },
                child: const Text(
                  'أوافق',
                  style: TextStyle(color: AppColor.backgroundcolor),
                ),
              ),
            )
          ],
        ));
  } 
}
