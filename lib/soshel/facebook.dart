// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unused_import, camel_case_types, deprecated_member_use, invalid_use_of_protected_member, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trend_money1/BottomNaviga/person.dart';//
import 'package:trend_money1/controller/data.dart';
import 'package:trend_money1/core/constant/routes.dart';//
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:trend_money1/screen/builCard.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart ' as http;

final box = GetStorage();

class Facebook extends StatefulWidget {
  DataController controller = Get.put(DataController());

  Facebook({Key? key}) : super(key: key);
  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarscreen('Facebook'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: ListView.builder(
          itemCount: controller.facebookList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return builCard(
                image: 'assets/images/فيس555.png',
                color: const Color(0xff0006ff),
                onPressed: () async {
                  try {
                    controller.OnPressedUrl(
                        controller.facebookList.value[index]['url']);
                    print(box.read('user'));
                    var response = await crud.postRequest(
                        "https://trend-money.tech/api/tasks/complete/", {
                      'task_id':
                          controller.facebookList.value[index]['id'].toString(),
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
                });
          },
        ),
      ),
    );
  }
}
