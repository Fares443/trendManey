// ignore_for_file: depend_on_referenced_packages, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/method.dart';

class ContanerPerson extends StatelessWidget {
  const ContanerPerson({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 120,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/TADREG1.png',
              )),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 142, 135, 135),
                offset: Offset(0, 15),
                blurRadius: 15)
          ],
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5,),
                child: Container(
                  child: const Text(
                    ' مستواك :',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColor.backgroundcolor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo'),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Methodmembership2(),
            //  const Spacer(),
            ],
          ),
          //فتره الصلاحية
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  ' وفى السماء رزقكم وما توعدون ',
                  style: TextStyle(
                      fontSize: 11,
                      color: AppColor.backgroundcolor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo'),
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      'فتره الصلاحية ',
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColor.backgroundcolor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child:  Text(
                      '${data[0]['days']} Days',
                      style: const TextStyle(
                          fontSize: 12,
                          color: AppColor.backgroundcolor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
