// ignore_for_file: depend_on_referenced_packages, unused_import, camel_case_types, unnecessary_import, use_key_in_widget_constructors, deprecated_member_use, avoid_print, must_be_immutable

import 'dart:ui';

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
            onPressed:()=> OnPressedUrl('https://m.facebook.com/messages/t/110718455014526'),
            icon: const Icon(Icons.send_and_archive_outlined, size: 35),
          )
        ],
        elevation: 0.0,
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          ' مرحبا بكم فى Trend Money ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.backgroundcolor,
              fontSize: 20),
        ),
      ),
      backgroundColor: AppColor.primaryColor,
      body: ListView(
        children: [
         Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      ButtonIconWork(
                          'assets/images/youtube133.png', AppColor.youtYube, () {
                        Get.snackbar('شروط مهام اليوتيوب ',
                            ' +مشاهدة فيديو لمدة 3 دقايق وعمل اشتراك + لايك + كومنت ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            backgroundColor: AppColor.grey,
                            colorText: AppColor.backgroundcolor,
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 5));
                        Get.toNamed(AppRoute.youtube);
                      }),
                      const SizedBox(
                        height: 15,
                      ),
                      ButtonIconWork('assets/images/insta.png', AppColor.insta, () {
                        Get.toNamed(AppRoute.intstagram);
                        Get.snackbar('شروط مهام الانستجرام ',
                            'متابعه + تفاعل علي صور + كومنت ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            backgroundColor: AppColor.grey,
                            colorText: AppColor.backgroundcolor,
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 5));
                      }),
                      const SizedBox(
                        height: 15,
                      ),
                      ButtonIconWork(
                          'assets/images/tik tok133.png', AppColor.tikTok, () {
                        Get.snackbar('شروط مهام التيك توك ',
                            'متابعه+شاهد الفيديو للنهايه + لايك +اكسبلور ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            backgroundColor: AppColor.grey,
                            colorText: AppColor.backgroundcolor,
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 5));
                        Get.toNamed(AppRoute.tiktok);
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonIconWork('assets/images/12454.png', AppColor.facebook,
                          () {
                        Get.snackbar('شروط مهام الفيس بوك ',
                            'متابعه + لايك + كومنت+ شير ملحوظة : اذا قمت بالمتابعه مسبقا قم بالتفاعل بالشروط علي محتوي الصفحه ',
                            backgroundColor: AppColor.grey,
                            colorText: AppColor.backgroundcolor,
                            margin: const EdgeInsets.only(top: 60),
                            duration: const Duration(seconds: 5));
                        Get.toNamed(AppRoute.facebook);
                      }),
                      const SizedBox(
                         height: 200,
                       ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }

  
}
