// ignore: depend_on_referenced_packages
// ignore_for_file: must_be_immutable, camel_case_types, depend_on_referenced_packages, use_key_in_widget_constructors, file_names, duplicate_ignore, sized_box_for_whitespace, unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/test2.dart';
import 'package:url_launcher/url_launcher.dart';

class builCard extends StatelessWidget {
  builCard(
      {required this.image,
      required this.color,
    
      required this.onPressed});

  String image;

  Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        child: ListTile(
       
          leading: Image.asset(
            image,
            fit: BoxFit.fill,
            height: 50,
            width: 70,
          ),
          title: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            color: AppColor.primaryColor,
            onPressed:onPressed,
            child: const Text(
              'فتح الرابط',
              style: TextStyle(color: AppColor.backgroundcolor),
            ),
          ),
          subtitle: const Text('https://m.com/messages'),
        ),
      ),
    );
  }
}
