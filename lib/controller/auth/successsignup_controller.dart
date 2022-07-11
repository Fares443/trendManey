import 'package:get/get.dart';
import 'package:trend_money1/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  gotoPageLagin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  gotoPageLagin() {
    Get.offAllNamed(AppRoute.bottomNavigationBa);
  }
}
