// ignore_for_file: library_private_types_in_public_api, must_call_super, depend_on_referenced_packages

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_money1/controller/auth/splashscreen_controller.dart';

SplashScreenController controller = Get.put(SplashScreenController());
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => controller.isregistered());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffF0EBE3),
                Color(0xffE4DCCF),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(50),
                  ),
                  Image.asset(
                    "assets/images/logoappq.png",
                    height: 174.0,
                    width: 174.0,
                  ),
                  const Text(
                    "TREND MONEY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                  // const Text(
                  //   'Make Your Money',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 15.0,
                  //   ),
                  // ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 25),
                  child: const Text(
                    'Version 1.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
