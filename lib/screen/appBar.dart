// ignore_for_file: depend_on_referenced_packages, must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';



  PreferredSizeWidget AppBarscreen(String title) {
    
    return AppBar(
      elevation: 0,
      title: Text(title,
       style: const TextStyle(
        fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
            color: AppColor.backgroundcolor,
            fontSize: 20),),
            backgroundColor: AppColor.primaryColor,
            centerTitle: true,
          

    );
  
}
