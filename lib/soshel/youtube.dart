// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unused_import, camel_case_types, unnecessary_import, deprecated_member_use, invalid_use_of_protected_member, must_be_immutable, avoid_print

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
import 'package:trend_money1/BottomNaviga/person.dart';
import 'package:trend_money1/core/constant/routes.dart';

final box = GetStorage();

class Youtube extends StatefulWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  DataController controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEEAE6),
      appBar: AppBarscreen('Youtube'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: ListView.builder(
          itemCount: controller.youtubeList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Dismissible(key: UniqueKey(), child:  builCard(
                title: 'Youtube',
                    image: 'assets/images/يوتيوب55.png',
                    color: const Color(0xffff0000),
                  
                    onPressed: () async {
            
                      try {
                        controller.OnPressedUrl(
                            controller.youtubeList.value[index]['url']);
                        print(box.read('user'));
                        var response = await crud.postRequest(
                            "https://trend-money.tech/api/tasks/complete/", {
                          'task_id': controller.youtubeList.value[index]['id']
                              .toString(),
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
                    }));
          },
        ),
      ),
    );
  }
}
