// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:trend_money1/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trend_money1/view/screen/auth/forgetpassword/resetpassword.dart';

abstract class ResePasWordController extends GetxController {
  resetPassWord();
  goToSuccessResetPassword();
}

class ResePasWordControllerImp extends ResePasWordController {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;
  @override
  resetPassWord() {

      var formdata = formstate.currentState;
    if (formdata!.validate()) {
      // ignore: avoid_print
      print('Valid');
    }else{
            // ignore: avoid_print
            print('Not Valid');

    }

  }


  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }

  @override
  void onInit() {
  
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
 
    password.dispose();
   
    super.dispose();
  }
}