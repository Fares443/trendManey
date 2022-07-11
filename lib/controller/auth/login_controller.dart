// ignore_for_file: depend_on_referenced_packages, avoid_print, non_constant_identifier_names

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
    if (formdata!.validate()) {
      isloading = true;
      var response = await crud.postRequest(linkLogin, {
        'email': email.text,
        'password': password.text,
      });
      isloading = false;
      if (response['logged'] ==true) {
      print('$response');
      var User = response['id'].toString();
         postgetUserinfo(User);
         print(linkApi);
    Get.offNamed(AppRoute.bottomNavigationBa);
         
        //Get.offNamed(AppRoute.verfiycodesignlup);
      } else {
         print('ValidNot');
        print(response);
      }
      print('Valid');
    } else {
      // ignore:
      print('Not Valid');
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
