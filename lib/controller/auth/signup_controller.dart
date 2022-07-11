// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:trend_money1/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trend_money1/crud.dart';
 import 'package:trend_money1/link_api.dart';

 Crud _crud = Crud();

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password1;
  late TextEditingController password2;
    bool isloading = false;
    bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  signUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
          isloading = true;
    
    var response = await _crud.postRequest(linkSignup, {
      'username': username.text,
      'email': email.text,
      'phone': phone.text,
      'password1': password1.text,
      'password2': password2.text,
    });
     isloading = false;
   //print(response);
    if (response['created'] =true ) {
    
    Get.offNamed(AppRoute.bottomNavigationBa);
     postgetUserinfo(response['id']);
     //Get.offNamed(AppRoute.verfiycodesignlup);
    } else {
   print(response);
   print('Not not Valid');
    }
   print(' Valid');
    } else {
      // ignore:
      print('Not Valid');
    }


  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password1 = TextEditingController();
   password2 = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password1.dispose();
    password2.dispose();
    super.dispose();
  }
}
