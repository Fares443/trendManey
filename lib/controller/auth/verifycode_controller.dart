// ignore_for_file: depend_on_referenced_packages, unused_import, unnecessary_overrides

import 'package:trend_money1/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodePasWordController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodePasWordControllerImp extends VerifyCodePasWordController {
  late String verifycode;
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

  
}
