// ignore_for_file: depend_on_referenced_packages, must_be_immutable
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trend_money1/Responsive/info_widget.dart';
import 'package:trend_money1/controller/data.dart';
import 'package:trend_money1/screen/splashscreen.dart';
import '/core/constant/color.dart';
import '/core/localization/translation.dart';
import '/core/services/services.dart';
import '/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/changelocal.dart';
late SharedPreferences sharedPref;
void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
 sharedPref=await SharedPreferences.getInstance();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  DataController controller = Get.put(DataController());

  MyApp({Key? key}) : super(key: key);
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
           return  const SplashScreen();
          },
         ),

       getPages: routes,
    );
  }
}