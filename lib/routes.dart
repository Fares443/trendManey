// ignore_for_file: depend_on_referenced_packages

import 'package:trend_money1/BottomNaviga/bottomNavigationBar.dart';
import 'package:trend_money1/screen/Done.dart';
import 'package:trend_money1/screen/help.dart';
import 'package:trend_money1/screen/many.dart';
import 'package:trend_money1/soshel/facebook.dart';
import 'package:trend_money1/BottomNaviga/ifshert.dart';
import 'package:trend_money1/soshel/intstagram.dart';
import 'package:trend_money1/soshel/tiktok.dart';
import 'package:trend_money1/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:trend_money1/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:trend_money1/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:trend_money1/view/screen/auth/forgetpassword/verfiycodesaginup.dart';
import 'package:trend_money1/view/screen/auth/success_sigup.dart';
import 'package:trend_money1/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:trend_money1/BottomNaviga/vip.dart';
import 'package:trend_money1/soshel/youtube.dart';

import '/core/constant/routes.dart';
import '/view/screen/auth/login.dart';
import '/view/screen/auth/signup.dart';
import '/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
     AppRoute.bottomNavigationBa:(context) =>  BottomNavigationBa(),
   AppRoute.many:(context) =>  const Many(),
AppRoute.done:(context) =>  const Done(),
   AppRoute.ifshert:(context) =>const  Ifshert(),
   AppRoute.facebook:(context) => const  Facebook(),
   AppRoute.intstagram:(context) => const Intstagram(),
   AppRoute.tiktok:(context) => const Tiktok(),
   AppRoute.youtube:(context) => const Youtube(),
   AppRoute.vip:(context) => const Vip(),
   AppRoute.login: (context) => const Login() , 
   AppRoute.signUp: (context) =>  const SignUp() , 
   AppRoute.forGetPassword: (context) => const ForgetPassword() ,
   AppRoute.verfiyCode: (context) => const VerfiyCode() ,
   AppRoute.resetPassword: (context) => const ResetPassWord() ,
   AppRoute.onBoarding: (context) => const OnBoarding() ,
   AppRoute.successSignUp: (context) => const SuccessSignUp() ,
   AppRoute.successResetPassword: (context) => const SuccessResetPassword() , 
   AppRoute.help:(context) =>const Help(),
   AppRoute.verfiycodesignlup:(context) => const VerfiyCodeSignlUp(),


};