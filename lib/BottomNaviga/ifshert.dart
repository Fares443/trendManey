// ignore_for_file: depend_on_referenced_packages, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:trend_money1/controller/data.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

DataController controller = Get.put(DataController());

class Ifshert extends StatelessWidget {
  Ifshert({Key? key}) : super(key: key);

  final pages = [
    Container(
        child: newMethod(0201114915134, 'assets/images/1silver1200.png',
            const Color(0xff3e505c))),
    Container(
        child: newMethod(0201003395893, 'assets/images/2extra1200.png',
            const Color(0xff48a97f))),
    Container(
        child: newMethod(0201507374744, 'assets/images/3golden12.png',
            const Color(0xff715314))),
    Container(
        child: newMethod(0201024209764, 'assets/images/4diamond1200.png',
            const Color(0xff57adf8))),
    Container(
        child: newMethod(0201507374744, 'assets/images/5premiere120.png',
            const Color(0xfff75b95))),
    Container(
        child: newMethod(0201019254573, 'assets/images/6max1200.png',
            const Color(0xfff9ba0f))),
    Container(
        child: newMethod(0201114915134, 'assets/images/7hero1200.png',
            const Color(0xffb63f9e))),
    Container(
        child: newMethod(0201024209764, 'assets/images/8king120.png',
            const Color(0xff383838))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        floatingActionButton: FloatingActionButton(
            backgroundColor:const Color(0xffFEEAE6),
            elevation: 18,
            onPressed: () {
              Get.toNamed(AppRoute.if22);
            },
            child: const Text(
              'التفاصيل',
              style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold, fontSize: 12,),
            )),
        appBar: AppBar(
          backgroundColor: const Color(0xffFEEAE6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
          elevation: 0,
          title: const Text(
            'اشتراك العضوية',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
                fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Builder(
          builder: ((context) {
            return LiquidSwipe(
              pages: pages,
              fullTransitionValue: 980,
              waveType: WaveType.circularReveal,
              slideIconWidget: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                semanticLabel: 'اسحب',
              ),
              positionSlideIcon: 0.7,
              onPageChangeCallback: (page) {
                print(page);
              },
              liquidController: LiquidController(),
            );
          }),
        ));
  }


}

Column newMethod(int number, String image, Color color) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            width: 350,
            // height: 550,
             padding: const EdgeInsets.only(top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset(image,
                  width: double.infinity, fit: BoxFit.contain, height: 550),
            ),
          ),
          Positioned(
             bottom: 30,
            // //   left: 105,
            right: 128,

            child: MaterialButton(
              onPressed: () => OnPressedUrl('https://wa.me/$number'),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: color,
                child: const Text(
                  'اشتراك',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColor.backgroundcolor),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
