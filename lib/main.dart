// ignore_for_file: unused_import, depend_on_referenced_packages, avoid_print
import 'package:trend_money1/BottomNaviga/bottomNavigationBar.dart';
import 'package:trend_money1/Responsive/info_widget.dart';
import 'package:trend_money1/screen/many.dart';
import 'package:trend_money1/soshel/facebook.dart';
import 'package:trend_money1/soshel/intstagram.dart';
import 'package:trend_money1/soshel/tiktok.dart';
import 'package:trend_money1/BottomNaviga/vip.dart';
import 'package:trend_money1/soshel/youtube.dart';
import 'package:trend_money1/test.dart';
import 'package:device_preview/device_preview.dart';
import 'package:trend_money1/view/screen/auth/login.dart';
import 'package:trend_money1/view/screen/auth/signup.dart';
import '/core/constant/color.dart';
import '/core/localization/translation.dart';
import '/core/services/services.dart';
import '/routes.dart';
import '/view/screen/language.dart';
import '/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/changelocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(DevicePreview(
    builder: (context) {
      return const MyApp();
    },
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            bodyText2:
                TextStyle(height: 2, color: AppColor.grey, fontSize: 14)),
        primarySwatch: Colors.blue,
      ),
     
       home: InfoWidget(
            builder: (context, deviceInfo) {
              return  const Language();
              
            },
          ),
//home: const Language(),
      routes: routes,
    );
  }
}
