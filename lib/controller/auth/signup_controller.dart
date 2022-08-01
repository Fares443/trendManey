// ignore_for_file: depend_on_referenced_packages, avoid_print, non_constant_identifier_names

import 'package:get_storage/get_storage.dart';
import 'package:toast/toast.dart';
import 'package:trend_money1/core/constant/color.dart';
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
    if(!await crud.checkConnection()){
      Toast.show("not connected Internet", duration: Toast.lengthShort, gravity:  Toast.bottom);
    }
    if (formdata!.validate()) {
          isloading = true;
    
    var response = await _crud.postRequest(linkSignup, {
      'username': username.text,
      'email': email.text,
      'phone': phone.text,
      'password1': password1.text,
      'password2': password2.text,
    });
    final box = GetStorage();
     isloading = false;
       print(response);
    if (response['created'] ==true ) {
      var User = response['id'].toString();
        await box.write('isregister', true);
        await box.write('user', User);
      //postgetUserinfo(User);
      postgetUserinfo(box.read('user'));
    Get.offNamed(AppRoute.bottomNavigationBa);
   
    } else  {
  print(response);
   print('Not not Valid');
  Get.snackbar('', 'هذا الحساب مستخدم بالفعل',backgroundColor: AppColor.primaryColor,colorText: AppColor.backgroundcolor);
    }
   print(' Valid');
    } else {
      // ignore:
      print('Not Valid');
   Get.snackbar('', 'خطأ في اسم المستخدم او كلمة السر',backgroundColor: AppColor.primaryColor,colorText: AppColor.backgroundcolor);

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
