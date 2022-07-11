// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unused_import, camel_case_types, unnecessary_import, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:trend_money1/screen/builCard.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/test2.dart';
import 'package:url_launcher/url_launcher.dart';

class Youtube extends StatelessWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBarscreen('Youtube'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => builCard(
            image:'assets/images/يوتيوب55.png',
          
            color:const Color(0xffff0000),
            
             onPressed: ()=>OnPressedUrl(tast4[index].youtuob),
          ),
        itemCount: tast4.length,)
      ),
    );
  }
}