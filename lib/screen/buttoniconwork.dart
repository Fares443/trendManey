// ignore_for_file: must_be_immutable, depend_on_referenced_packages, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ButtonIconWork extends StatelessWidget {
  ButtonIconWork(this.images, this.onPressed);
  String images;
 
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: onPressed,
        icon: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Image.asset(
            images,
          ),
        ),
        iconSize: 150,
      ),
    );
  }
}
