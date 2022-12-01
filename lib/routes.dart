// ignore_for_file: depend_on_referenced_packages

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:trend_money1/BottomNaviga/bottomNavigationBar.dart';
import 'package:trend_money1/BottomNaviga/if22.dart';

import 'package:trend_money1/screen/Done.dart';
import 'package:trend_money1/screen/help.dart';
import 'package:trend_money1/screen/many.dart';
import 'package:trend_money1/screen/splashscreen.dart';
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
import 'package:trend_money1/view/screen/language.dart';

import '/core/constant/routes.dart';
import '/view/screen/auth/login.dart';
import '/view/screen/auth/signup.dart';
import '/view/screen/onboarding.dart';
import 'BottomNaviga/If33.dart';

List<GetPage<dynamic>>? routes = [
GetPage(name: AppRoute.if33, page: () => const If33()),
 GetPage(name: AppRoute.if22, page: () => const If22()),
  GetPage(name: AppRoute.language, page: () => const Language()),
   GetPage(name:AppRoute.splashScreen, page: () => const SplashScreen()),
    GetPage(name: AppRoute.bottomNavigationBa, page: () =>  BottomNavigationBa()),
     GetPage(name: AppRoute.many, page: () => const Many()),
      GetPage(name: AppRoute.done, page: () => const Done()),
       GetPage(name: AppRoute.ifshert, page: () =>  Ifshert()),
        GetPage(name: AppRoute.facebook, page: () =>  Facebook()),
        GetPage(name: AppRoute.intstagram, page: () =>  const Intstagram()),
         GetPage(name: AppRoute.tiktok , page: () => const Tiktok()),
          GetPage(name: AppRoute.youtube, page: () => const Youtube()),
           GetPage(name: AppRoute.vip, page: () => const Vip()),
            GetPage(name: AppRoute.login, page: () => const Login()),
             GetPage(name: AppRoute.signUp, page: () => const SignUp()),
             GetPage(name: AppRoute.forGetPassword, page: () => const ForgetPassword()),
              GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
               GetPage(name: AppRoute.resetPassword, page: () => const ResetPassWord()),
                GetPage(name: AppRoute.onBoarding ,page: () => const OnBoarding()),
                 GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
                  GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPassword()),
                  GetPage(name: AppRoute.help, page: () => const Help()),
                   GetPage(name: AppRoute.verfiycodesignlup, page: () => const VerfiyCodeSignlUp()),


];
