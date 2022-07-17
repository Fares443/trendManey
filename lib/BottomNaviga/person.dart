// ignore_for_file: depend_on_referenced_packages, unused_import, unnecessary_import, avoid_unnecessary_containers, non_constant_identifier_names, prefer_is_empty, invalid_use_of_protected_member

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:trend_money1/controller/data.dart';
import 'package:trend_money1/crud.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/constanerperson.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/imgaeasset.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/screen/method.dart';

DataController controller = Get.put(DataController());

class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarscreen( 'TREND MONEY'),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'TREND MONEY',
          style: TextStyle(
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              color: AppColor.backgroundcolor,
              fontSize: 20),
        ),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        leading:IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.login);
            },
            icon: const Icon(Icons.power_settings_new),
          ) ,
    
      ),

      body: Obx(() => data.value.length == 0
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: ListView(children: [
                //مستواك VIP
                const SizedBox(
                  height: 20,
                ),

                const ContanerPerson(),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MethodColumn('ارباح اليوم', '(EGP)',
                            '${data.length > 0 ? data[0]['tody_earning'] : '0'}'),
                        MethodColumn('عدد الدعوات', '(EGP)',
                            '${data.length > 0 ? data[0]['total_invites'] : '0'}'),
                        MethodColumn('الرصيد المتوفر', '(EGP)',
                            '${data.length > 0 ? data[0]['available_balance'] : '0'}'),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MethodColumn('المهام الشهرية', '(@)',
                            '${data.length > 0 ? data[0]['total_tasks'] : '0'}'),
                        MethodColumn('اسم العضوية', '(@)',
                            '${data.length > 0 ? data[0]['member_ship'] : '0'}'),
                        MethodColumn('اجمالى السحوبات', '(EGP)',
                            '${data.length > 0 ? data[0]['total_balance'] : '0'}'),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          MethodButtonPerson('سحب', () {
                            Get.toNamed(AppRoute.many);
                          }),
                          MethodButtonPerson('الدعم والمساعدة', () {
                            Get.toNamed(AppRoute.help);
                          }),
                        ]),
                  ],
                ),
              ]),
            )),
    );
  }
}
