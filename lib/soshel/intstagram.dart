// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unused_import, camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:trend_money1/screen/builCard.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/test2.dart';
import 'package:url_launcher/url_launcher.dart';

class Intstagram extends StatelessWidget {
  const Intstagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarscreen('Instagram'),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) =>  builCard(
              image:'assets/images/انستا55.png',
             color: const Color(0xfffc00ff),
             onPressed:()=> OnPressedUrl(tast2[index].instgram),
             
            ),
            itemCount: tast2.length,
          )),
    );
  }
}
