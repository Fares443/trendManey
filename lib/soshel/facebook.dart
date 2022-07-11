// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unused_import, camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:trend_money1/screen/builCard.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/test.dart';
import 'package:trend_money1/test2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart ' as http;

class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);
  @override
  State<Facebook> createState() => _FacebookState();
}
class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarscreen('Facebook'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
             child: ListView.builder(
                  itemCount: tast1.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return builCard(
                    image: 'assets/images/فيس555.png',
                    color: const Color(0xff0006ff),
                    onPressed: () => OnPressedUrl( tast1[index].facebook),
                  );
                },
        ),
      ),
    );
  }
}
