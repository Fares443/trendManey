// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, prefer_is_empty, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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

Widget MethodButtonPerson(String image, Function() onPressed,) {
  return MaterialButton(
   
    color: const Color(0xffFEEAE6),
    splashColor: const Color(0xffFEEAE6),
    elevation:2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color:  Color(0xffFEEAE6),
        )),
    onPressed: onPressed,
    child:Lottie.asset(image,fit: BoxFit.cover,width: 100,
    
    ),
  );
}

Widget MethodColumn(String title, icon, title22) {
  return Column(
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 12,
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
