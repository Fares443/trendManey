// ignore_for_file: depend_on_referenced_packages, unused_import, camel_case_types, unnecessary_import, use_key_in_widget_constructors, deprecated_member_use, avoid_print, must_be_immutable

import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:trend_money1/screen/buttoniconwork.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/imgaeasset.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/BottomNaviga/vip.dart';
import 'package:url_launcher/url_launcher.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => OnPressedUrl(
                'https://m.facebook.com/messages/t/110718455014526'),
            icon: const Icon(Icons.send_and_archive_outlined,
                size: 35, color: AppColor.primaryColor),
          )
        ],
        elevation: 0.0,
        backgroundColor: AppColor.backgroundcolor,
        title: const Text(
          ' مرحبا بكم فى Trend Money ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
              fontSize: 20),
        ),
      ),
      backgroundColor: AppColor.backgroundcolor,
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xffFEEAE6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonIconWork('assets/images/insta3334.png', () {
                          Get.snackbar('شروط مهام الانستجرام ',
                            'متابعه + تفاعل علي صور + كومنت ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            colorText: AppColor.backgroundcolor,
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 10));
                        Get.toNamed(AppRoute.intstagram);
                        methodAwesomDialod(context).show();
                      }),
                      ButtonIconWork('assets/images/tik2233.png', () {
                         Get.snackbar('شروط مهام التيك توك ',
                            'متابعه+شاهد الفيديو للنهايه + لايك +اكسبلور ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            colorText: AppColor.backgroundcolor,
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 10));
                        Get.toNamed(AppRoute.tiktok);
                        methodAwesomDialod(context).show();
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonIconWork('assets/images/you232.png', () {
                         Get.snackbar('شروط مهام اليوتيوب ',
                            ' +مشاهدة فيديو لمدة 3 دقايق وعمل اشتراك + لايك + كومنت ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 10));
                        Get.toNamed(AppRoute.youtube);
                        methodAwesomDialod(context).show();
                      }),
                      ButtonIconWork('assets/images/face2233.png', () {
                       
                         Get.snackbar('شروط مهام الفيس بوك ',
                            'متابعه + لايك + كومنت+ شير ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            colorText: AppColor.backgroundcolor,
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 10));
                        Get.toNamed(AppRoute.facebook);
                        methodAwesomDialod(context).show();
                      }),
                    ],
                  ),
                  Column(
                    children: [
                      ButtonIconWork('assets/images/vip233.png', () {
                        Get.toNamed(AppRoute.vip);
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AwesomeDialog methodAwesomDialod(BuildContext context) {
    return AwesomeDialog(
      padding: const EdgeInsets.only(left: 15, right: 15),
      alignment: Alignment.center,
      context: context,
      animType: AnimType.rightSlide,
      dialogType: DialogType.success,
      body: const Center(
        child: Text(
          'ملاحظة هامة\nبعد الضغط علي فتح الرابط وتنفيذ المهمه عليك تحريك الرابط الي اليمين او اليسار للتأكيد ومن ثم الاستمرار في تنفيذ المهام',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Cairo',
              color: AppColor.black),
        ),
      ),
      btnOkOnPress: () {},
    );
  }
}
