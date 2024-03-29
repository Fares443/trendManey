// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/view/widget/auth/custombuttonauth.dart';

class Done extends StatelessWidget {
  const Done({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
           Center(
            child:  Lottie.asset(
            'assets/lottie/18589-deliver-delight.json',
            fit: BoxFit.cover,
          
          ),
            // child: Icon(
            //   Icons.check_circle_outline,
            //   size: 200,
            //   color: AppColor.primaryColor,
            // ),
          ),
          const Text('حالة السحب فى الانتظار ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          const Text('يتم التحويل من يوم 22 الى يوم 28 شهريا',
              style: TextStyle(fontSize: 13, color: Colors.black)),
          const Spacer(),
          Container(
            width: double.infinity,
            child: CustomButtomAuth(
                text: "موافق",
                onPressed: () {
                  Get.offAllNamed(AppRoute.bottomNavigationBa);
                }),
          ),
          const SizedBox(
            height: 30,
          )
        ]),
      ),
    );
  }
}
