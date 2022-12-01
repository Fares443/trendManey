// ignore_for_file: depend_on_referenced_packages, unnecessary_import

import 'dart:ui';

import 'package:trend_money1/core/Function/vaildinput.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import '/controller/auth/login_controller.dart';
import '/core/constant/color.dart';
import '/view/widget/auth/custombuttonauth.dart';
import '/view/widget/auth/customtextbodyauth.dart';
import '/view/widget/auth/customtextformauth.dart';
import '/view/widget/auth/customtexttitleauth.dart';
import '/view/widget/auth/logoauth.dart';
import '/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return Scaffold(
   floatingActionButton: FloatingActionButton(
    elevation: 20,
    backgroundColor:Colors.white,
    onPressed: () =>
                        OnPressedUrl('https://m.facebook.com/messages/t/110718455014526'),
    child: Image.asset('assets/images/help22.png',fit: BoxFit.cover,height: 40),),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFEEAE6),
        elevation: 0.0,
   
      ),
      body: controller.isloading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
            child: Container(
              color: const Color(0xffFEEAE6),
              margin:const EdgeInsets.all(0) ,
              child: Row(
                children: [
                  Expanded(
                    flex: 7,

                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        child: Form(
                          key: controller.formstate,
                          child: ListView(children: [
                            const LogoAuth(),
                            const SizedBox(height: 10),
                            const CustomTextTitleAuth(text: "اهلا بكم"),
                            const SizedBox(height: 10),
                            const CustomTextBodyAuth(
                                text:
                                    "قم بعملية تسجيل الدخول الخاص بيك"),
                            const SizedBox(height: 15),
                            CustomTextFormAuth(
                              vaild: (val) {
                                return validInput(val!, 5, 100, 'email');
                              },
                              mycontroller: controller.email,
                              hinttext: "ادخل البريد الالكترونى",
                              iconData: Icons.email_outlined,
                              labeltext: " البريد الالكترونى ",
                              // mycontroller: ,
                            ),
                            GetBuilder<LoginControllerImp>(
                              builder: (controller) => CustomTextFormAuth(
                                obscureText: controller.isshowpassword,
                                onTapIcon: () {
                                  controller.showpassword();
                                },
                  
                                vaild: (val) {
                                  return validInput(val!, 5, 30, 'password');
                                },
                                mycontroller: controller.password,
                                hinttext: "ادخل  كلمة المرور",
                                iconData: Icons.lock_outline,
                                labeltext: " كلمةالمرور ",
                                // mycontroller: ,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                               
                              controller.goToForgetPassword();
                              },
                              child: const Text(
                                "هل نسيت كلمة السر",
                                style: TextStyle(color: AppColor.primaryColor),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            CustomButtomAuth(
                                text: "تسجيل الدخول",
                                onPressed: () {
                                  controller.login();
                                }),
                        const SizedBox(height: 40),
                            CustomTextSignUpOrSignIn(
                              textone: "هل ليس لديك حساب? ",
                              texttwo: "SignUp",
                              onTap: () {
                                controller.goToSignUp();
                              },
                            )
                          ]),
                        ),
                      ),
                  ),

                ],
              ),
            ),
          ),
    );
  }
}
