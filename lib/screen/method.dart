// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, prefer_is_empty, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/link_api.dart';

Widget Methodmembr(String title) {
  return Text(
    title,
    style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColor.backgroundcolor,
        fontFamily: 'Cairo',
        fontSize: 22),
  );
}

Widget MethodNumber(String title) {
  return Text(
    title,
    style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
        fontFamily: 'Cairo',
        fontSize: 22),
  );
}
Widget Methodmembership2() {
  return Methodmembr('${data.length > 0 ? data[0]['member_ship'] : '0'}');
}

Widget MethodButtonPerson(String title, Function() onPressed) {
  return MaterialButton(
    splashColor: AppColor.primaryColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: AppColor.primaryColor, width: 2)),
    onPressed: onPressed,
    child: Text(
      title,
      style: const TextStyle(
          color: AppColor.primaryColor, fontWeight: FontWeight.bold),
    ),
  );
}

Widget MethodColumn(String title ,icon,title22 ) {
  return Column(
    children: [

Text(
    title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
  ),
  Text(
     icon,
     style: const TextStyle(
       fontWeight: FontWeight.bold,
     ),
   ),
MethodNumber(title22),

    ],
  );
}
