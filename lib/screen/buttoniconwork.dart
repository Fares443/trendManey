// ignore_for_file: must_be_immutable, depend_on_referenced_packages, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';

class ButtonIconWork extends StatelessWidget {
  ButtonIconWork(this.images, this.color, this.onPressed);
  String images;
  Color color;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 20),
            color: Color.fromARGB(255, 160, 153, 153),
            blurRadius: 50,
          )
        ],
      ),
      width: double.infinity,
      height: 100,
      child: IconButton(
        splashColor: AppColor.backgroundcolor,
        onPressed: onPressed,
        icon: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Image.asset(
            images,
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        iconSize: 500,
      ),
    );
  }
}
