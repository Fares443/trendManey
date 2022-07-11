// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, prefer_is_empty, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/link_api.dart';

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

Widget MethodText(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
  );
}

Widget MethodIcon(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  );
}
//getbuilder
Widget MethodRowNumber() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        width: 35,
      ),
      // ${linkApi[0]['tody_earning']}
      // ignore: prefer_is_empty

      
      MethodNumber('${linkApi!.length > 0 ? linkApi![0]['tody_earning']:''}'),
      const SizedBox(
        width: 70,
      ),
      //${linkApi[0]['total_invites']}
      MethodNumber('${linkApi!.length> 0 ? linkApi![0]['total_invites']: ''}'),
      const Spacer(),
      //${linkApi[0]['available_balance']}
      MethodNumber('${linkApi!.length > 0?linkApi![0]['available_balance']:''}'),
      const SizedBox(
        width: 25,
      ),
    ],
  );
}


//2

Widget MethodRowNumber2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        width: 35,
      ),
      // ${linkApi[0]['tody_earning']}
      // ignore: prefer_is_empty
      MethodNumber('${linkApi!.length > 0 ? linkApi![0]['total_tasks']:''}'),
      const SizedBox(
        width: 70,
      ),
      //${linkApi[0]['total_invites']}
      MethodNumber('${linkApi!.length> 0 ? linkApi![0]['member_ship']: ''}'),
      const Spacer(),
      //${linkApi[0]['available_balance']}
      MethodNumber('${linkApi!.length > 0?linkApi![0]['total_balance']:''}'),
      const SizedBox(
        width: 25,
      ),
    ],
  );
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

Widget MethodButtonPerson2(String title, Function() onPressed) {
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
