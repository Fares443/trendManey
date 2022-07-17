// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unused_import, camel_case_types, deprecated_member_use, must_be_immutable, invalid_use_of_protected_member, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trend_money1/controller/data.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:trend_money1/screen/builCard.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart ' as http;
import 'package:trend_money1/BottomNaviga/person.dart';//
import 'package:trend_money1/core/constant/routes.dart';//
final box = GetStorage();

class Tiktok extends StatefulWidget {

  const Tiktok({Key? key}) : super(key: key);

  @override
  State<Tiktok> createState() => _TiktokState();
}

class _TiktokState extends State<Tiktok> {
  DataController controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarscreen('TikTok'),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => builCard(
                image: 'assets/images/تيك55.png',
                color: const Color(0xff000000),
                //  onPressed: ()=>controller.OnPressedUrl(controller.tiktokList.value[index]['url']),
                onPressed: () async {
                
                  try {
                    controller.OnPressedUrl(
                        controller.tiktokList.value[index]['url']);
                    print(box.read('user'));
                    var response = await crud.postRequest(
                        "https://trend-money.tech/api/tasks/complete/", {
                      'task_id':
                          controller.tiktokList.value[index]['id'].toString(),
                      'user_id': box.read("user"),
                    });
                    if (response['saved'] == true) {
                      print(response);
                      print('value');
                    } else {
                      print('not value');
                      // data.add(response);
                    }
                  } catch (e) {
                    print('$e');
                  }
                }),
            itemCount: controller.tiktokList.length,
          )),
    );
  }
}
