// ignore_for_file: depend_on_referenced_packages, unused_import, avoid_print, avoid_unnecessary_containers

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trend_money1/core/Function/vaildinput.dart';
import 'package:trend_money1/crud.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/menu/side_menu_section.dart';
import '../../../core/constant/routes.dart';
import '/controller/auth/signup_controller.dart';
import '/core/constant/color.dart';
import '/view/widget/auth/custombuttonauth.dart';
import '/view/widget/auth/customtextbodyauth.dart';
import '/view/widget/auth/customtextformauth.dart';
import '/view/widget/auth/customtexttitleauth.dart';
import '/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFEEAE6),
        elevation: 0.0,
        // title: Text('Sign Up',
        //     style: Theme.of(context)
        //         .textTheme
        //         .headline1!
        //         .copyWith(color: AppColor.grey)),
      ),
      body: controller.isloading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      color: const Color(0xffFEEAE6),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        child: Form(
                          key: controller.formstate,
                          child: ListView(children: [
                            const SizedBox(height: 20),
                            const CustomTextTitleAuth(text: "اهلا بيك"),
                            const SizedBox(height: 10),
                            const CustomTextBodyAuth(
                                text: "كم بتسجيل البيانات الاتية لتكن معنا "),
                            const SizedBox(height: 15),
                            CustomTextFormAuth(
                              vaild: (val) {
                                return validInput(val!, 8, 30, 'username');
                              },
                              mycontroller: controller.username,
                              hinttext: "ادخل اسم",
                              iconData: Icons.person_outline,
                              labeltext: "الاسم",
                              // mycontroller: ,
                            ),
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
                            CustomTextFormAuth(
                              vaild: (val) {
                                return validInput(val!, 11, 12, 'phone');
                              },
                              mycontroller: controller.phone,
                              hinttext: "ادخل رقم الموبيل",
                              iconData: Icons.phone_android_outlined,
                              labeltext: "الموبيل",
                              // mycontroller: ,
                            ),
                            GetBuilder<SignUpControllerImp>(builder: (controller)=> CustomTextFormAuth(
                              obscureText: controller.isshowpassword,
                              onTapIcon: () {
                                controller.showpassword();
                              },
                              vaild: (val) {
                                return validInput(val!, 5, 30, 'password');
                              },
                              mycontroller: controller.password1,
                              hinttext: "ادخل  كلمة المرور",
                              iconData: Icons.lock_outline,
                              labeltext: " كلمةالمرور ",
                              // mycontroller: ,
                            ),),
                             GetBuilder<SignUpControllerImp>(builder: (controller)=>
                            CustomTextFormAuth(
                             obscureText: controller.isshowpassword,
                              onTapIcon: () {
                                controller.showpassword();
                              },
                              vaild: (val) {
                                if (val != controller.password1.text) {
                                  return 'كلمة السر لا يتطابق';
                                }
                                return validInput(val!, 5, 30, 'password2');
                  
                              },
                              mycontroller: controller.password2,
                              hinttext: 'اعد ادخال كلمةالمرور',
                              iconData: Icons.lock_outline,
                              labeltext: " كلمةالمرور ",
                              // mycontroller: ,
                            ),),
                            CustomButtomAuth(
                                text: "تسجيل الدخول",
                                onPressed: () {
                                  controller.signUp();
                                }),
                            const SizedBox(height: 40),
                            CustomTextSignUpOrSignIn(
                              textone: "هل لديك حساب  ? ",
                              texttwo: " SignIn ",
                              onTap: () {
                                controller.goToSignIn();
                              },
                            ),
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
