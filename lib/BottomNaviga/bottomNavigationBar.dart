// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_money1/BottomNaviga/ifshert.dart';
import 'package:trend_money1/BottomNaviga/person.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/BottomNaviga/work.dart';
import 'package:trend_money1/BottomNaviga/vip.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavigationBa extends StatefulWidget {
  @override
  State<BottomNavigationBa> createState() => _BottomNavigationBaState();
}

class _BottomNavigationBaState extends State<BottomNavigationBa> {
  int index = 0;
  final List<Widget> lap = [
    const Person(),
    Ifshert(),
    const Work(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
   
        backgroundColor: AppColor.primaryColor,
        items: <Widget>[
          Lottie.asset(
            'assets/lottie/61913-people-lottie-animation.json',
            fit: BoxFit.cover,
            width: 46,
          ),
  
          Lottie.asset(
            'assets/lottie/5260-upgrade-premium.json',
            fit: BoxFit.cover,
            width: 46,
          ),
          Lottie.asset(
            'assets/lottie/lf30_editor_1h7y6zdy.json',
            fit: BoxFit.cover,
            width: 46,
          ),
        ],
        onTap: (select) {
          setState(() {
            index = select;
          });
        },
      ),
      body: lap.elementAt(index),

      //backgroundColor: const Color(0xffFEEAE6),
      //   currentIndex: index,
      //   selectedItemColor: AppColor.primaryColor,
      //   selectedFontSize: 10,
      //   iconSize: 25,
      //   onTap: (select) {
      //     setState(() {
      //       index = select;
      //     });
      //   },
      //   items: [
      //      BottomNavigationBarItem(
      //       icon: Lottie.asset('assets/lottie/61913-people-lottie-animation.json',fit: BoxFit.cover,width:46,) ,
      //     label: 'ارباح',
      //       backgroundColor: AppColor.backgroundcolor,
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: AppColor.primaryColor,

      //       icon:Lottie.asset('assets/lottie/5260-upgrade-premium.json',fit: BoxFit.cover,width: 65),
      //       label: 'الباقات',
      //     ),
      //      BottomNavigationBarItem(
      //       icon: Lottie.asset('assets/lottie/lf30_editor_1h7y6zdy.json',fit: BoxFit.cover,width: 45),
      //       label: 'المهام',
      //     ),
      //   ],
      // ),

      // body: lap.elementAt(index),
    );
  }
}
