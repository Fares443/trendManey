// ignore_for_file: depend_on_referenced_packages, avoid_print, non_constant_identifier_names

import 'package:get_storage/get_storage.dart';
import 'package:toast/toast.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trend_money1/crud.dart';
import 'package:trend_money1/link_api.dart';

Crud crud = Crud();

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  bool isloading = false;
  bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (!await crud.checkConnection()) {
      Toast.show("not connected Internet",
          duration: Toast.lengthShort, gravity: Toast.bottom);
      update();
    }
    if (formdata!.validate()) {
      formdata.save();
      isloading = true;

      var response = await crud.postRequest(linkLogin, {
        'email': email.text,
        'password': password.text,
      });
      final box = GetStorage();
      isloading = false;

      print(response);
      if (response['logged'] == true) {
      
        var User = response['id'].toString();
        await box.write('isregister', true);
        await box.write('user', User);
        postgetUserinfo(box.read('user'));

        Get.offAllNamed(AppRoute.bottomNavigationBa);
      } else {
        Get.snackbar('', 'خطأ في اسم المستخدم او كلمة السر',
            backgroundColor: AppColor.primaryColor,
            colorText: AppColor.backgroundcolor);
      }
      update();
      print('Valid1');
    } else {
      // ignore:
      Get.snackbar('خطأ في اسم المستخدم او كلمة السر', '',
          backgroundColor: AppColor.primaryColor,
          colorText: AppColor.backgroundcolor);
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
    update();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forGetPassword);
  }
}
