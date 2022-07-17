// ignore_for_file: avoid_print, depend_on_referenced_packages
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/crud.dart';
import 'package:trend_money1/link_api.dart';
Crud crud = Crud();
class WithdrawController extends GetxController{



  final TextEditingController mobile = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController amount = TextEditingController();
  final TextEditingController payment = TextEditingController();


  GlobalKey<FormState> formstate2 =  GlobalKey<FormState>();

  void withdraw() async {
    var formdata = formstate2.currentState;
    if (formdata!.validate()) {
      formdata.save();
      var response = await crud.postRequest(linkWithdraw, {
        'phone' : mobile.text,
        'password' : pass.text,
        'price' : amount.text,
        'way' : payment.text,
      });
        print(response);
      if (response['complete'] == true) {
        Get.toNamed(AppRoute.done);
      } else {
        Get.snackbar('', 'خطأ في اسم المستخدم او كلمة السر'); 
        print('not Valid');
      }
     print(' Valid');
    } else {
      // ignore:
        print('not Valid');
      Get.snackbar('خطأ في اسم المستخدم او كلمة السر', '',backgroundColor: AppColor.primaryColor,colorText: AppColor.backgroundcolor);
    }

  }
  




}