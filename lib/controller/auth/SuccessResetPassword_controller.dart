// ignore_for_file: file_names, unused_import

import 'package:get/get.dart';
import 'package:trend_money1/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  gotoPageLagin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  gotoPageLagin() {
    Get.offAllNamed(AppRoute.login);
  }
}
