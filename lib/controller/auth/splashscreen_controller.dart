import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/link_api.dart';

class SplashScreenController extends GetxController {
  final box = GetStorage();

  void isregistered() async {
    if (box.read('isregister') == true) {
      await postgetUserinfo(box.read('user'));
      Get.offAllNamed(AppRoute.bottomNavigationBa);
    } else {
            Get.offAllNamed(AppRoute.language);
    }
  }
}
