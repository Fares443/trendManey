// ignore_for_file: depend_on_referenced_packages

import 'package:trend_money1/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswoedController extends GetxController {
  checkemail();
  goToVerfiycode();
}

class ForgetPasswoedControllerImp extends ForgetPasswoedController {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  
  @override
  checkemail() {
   
  }

  @override
  goToVerfiycode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      // ignore: avoid_print
      print('Valid');
    }else{
            // ignore: avoid_print
            print('Not Valid');

    }
    Get.offNamed(AppRoute.verfiyCode);
  }

  @override
  void onInit() {
  
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
 
    email.dispose();
   
    super.dispose();
  }
}