// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/screen/appBar.dart';

import '../core/constant/color.dart';

class If22 extends StatelessWidget {
  const If22({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xffFEEAE6),
            elevation: 18,
            onPressed: () {
              Get.toNamed(AppRoute.if33);
            },
            child: const Text(
              'الشروط',
              style: TextStyle(color:AppColor.primaryColor),
            )),
        appBar: AppBarscreen('الباقات'),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 10, left: 1, right: 7),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      'assets/images/1test backges1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      'assets/images/2test backges2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
