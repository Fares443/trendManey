// ignore_for_file: depend_on_referenced_packages, unused_import, unnecessary_import, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:trend_money1/crud.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/constanerperson.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/imgaeasset.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/screen/method.dart';

class Person extends StatelessWidget {
const  Person({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarscreen('Trend Mony'),
      body: Padding(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MethodText('ارباح اليوم'),
                  MethodText('عدد الدعوات'),
                  MethodText('الرصيد المتوفر'),
                
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MethodIcon('(EGP)'),
                  MethodIcon('(EGP)'),
                  MethodIcon('(EGP)'),
                ],
              ),
             MethodRowNumber(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          //2
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MethodText('المهام المتبقية'),
                  MethodText('اسم العضوية'),
                  MethodText('اجمالى الايرادات'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MethodIcon('  (@)  '),
                  MethodIcon('  (@)  '),
                  MethodIcon('  (EGP)'),
                ],
              ),
              ////eroor
              MethodRowNumber2(),
            ],
          ),
          const SizedBox(
            height: 10,
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
            ],
          ),
        ]),
      ),
    );
  }
}
