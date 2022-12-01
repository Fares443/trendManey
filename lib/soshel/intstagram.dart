// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unused_import, camel_case_types, deprecated_member_use, must_be_immutable, invalid_use_of_protected_member, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path/path.dart';
import 'package:trend_money1/controller/data.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:trend_money1/screen/builCard.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:url_launcher/url_launcher.dart';

final box = GetStorage();

class Intstagram extends StatefulWidget {

  const Intstagram({Key? key}) : super(key: key);

  @override
  State<Intstagram> createState() => _IntstagramState();
}

class _IntstagramState extends State<Intstagram> {
  DataController controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffFEEAE6),
      appBar: AppBarscreen('Instagram'),
      body: Padding(
          padding: const EdgeInsets.symmetric( vertical: 20),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) =>Dismissible(key: UniqueKey(), child:  builCard(
               title: 'Instagram',
                image: 'assets/images/انستا55.png',
                color: const Color(0xfffc00ff),
                // onPressed:()=> controller.OnPressedUrl(controller.instgramList.value[index]['url']),
                onPressed: () async {
                 
                  try {
                    controller.OnPressedUrl(
                        controller.instgramList.value[index]['url']);
                    print(box.read('user'));
                    var response = await crud.postRequest(
                        "https://trend-money.tech/api/tasks/complete/", {
                      'task_id':
                          controller.instgramList.value[index]['id'].toString(),
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
                })),
            itemCount: controller.instgramList.length,
          )),
    );
  }
}
