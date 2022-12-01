// ignore_for_file: depend_on_referenced_packages, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:trend_money1/screen/appBar.dart';



class If33 extends StatelessWidget {
  const If33({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBarscreen('الشروط'),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 10,left: 1,right:7),
                child: Column(
                     children: [
                     
                       Padding(
                         padding: const EdgeInsets.all(3),
                         child: Image.asset('assets/images/data1200.png',fit: BoxFit.cover,),
                       ),
                      
                    
                     ],
                   ),
              ),
          ],
        ));
  }
}
