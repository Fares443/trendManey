// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, file_names, unused_import



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_money1/BottomNaviga/ifshert.dart';
import 'package:trend_money1/BottomNaviga/person.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/BottomNaviga/work.dart';
import 'package:trend_money1/BottomNaviga/vip.dart';

class BottomNavigationBa extends StatefulWidget {
  @override
  State<BottomNavigationBa> createState() => _BottomNavigationBaState();
}

class _BottomNavigationBaState extends State<BottomNavigationBa> {
  int index =0;
  final List<Widget> lap = [
    const Person(),
    const Ifshert(),
     const Work(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
         
        currentIndex: index,
        selectedItemColor: AppColor.primaryColor,
        selectedFontSize: 10,
        iconSize: 25,
        onTap: (select) {
          setState(() {
            index = select;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'الخاص بى',
            backgroundColor: AppColor.backgroundcolor,
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColor.primaryColor,
            
            icon: Image.asset(
              'assets/images/vip3.png',
              width: 150,
              height: 70,
              fit: BoxFit.contain,
            ),
            label: 'Vip',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'مهمة',
          ),
        ],
      ),
      body: lap.elementAt(index),
    );
  }
}
