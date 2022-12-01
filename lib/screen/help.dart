// ignore_for_file: deprecated_member_use, camel_case_types, depend_on_referenced_packages, prefer_const_constructors, avoid_print, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:lottie/lottie.dart';
class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 350,
        child: Scaffold(
          backgroundColor:  const Color(0xffFEEAE6),
          appBar: AppBarscreen('لدعم والمساعدة'),
          body: ListView(children: [
            const SizedBox(
              height: 15,
            ),
    Center(child: Text('النشرة',
       style: const TextStyle(
                       fontFamily: 'Cairo',
                         fontWeight: FontWeight.bold,
                         fontSize: 25,
                         color: AppColor.primaryColor,
                                    )),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                                   color: AppColor.primaryColor,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(42),
                                     side: const BorderSide(
                                       width: 2,
                                        color: AppColor.primaryColor,
                                         )),
                                   child: Padding(
                                     padding: const EdgeInsets.only(top: 4,bottom: 4,left: 22,right: 22),
                                     child: Text('${msgs[0]},',
                     style: const TextStyle(
                       fontFamily: 'Cairo',
                         fontWeight: FontWeight.bold,
                         fontSize: 12,
                         backgroundColor: AppColor.primaryColor,
                                     color: Colors.white)),
                                   ),
                                 ),
            ),
                                const SizedBox(
              height: 40,
            ),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical:10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () =>
                        OnPressedUrl('https://www.facebook.com/Trend.Money1'),
                    icon: Image.asset(
                      'assets/images/facebookMenu.png',
                      fit: BoxFit.cover,
                      height: 80,
                    ),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () =>
                        OnPressedUrl('https://wa.me/0201507374744'),
                    icon: Image.asset(
                      'assets/images/whatsappMenu.png',
                      fit: BoxFit.cover,
                      height: 80,
                    ),
                    iconSize: 50,
                  ),
                 
                  IconButton(
                    onPressed: () =>
                        OnPressedUrl('https://www.instagram.com/trend.money1/'),
                    icon: Image.asset(
                      'assets/images/instagramMenu.png',
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    iconSize: 50,
                  )
                ],
              ),
            ),
          ]),
        ));
  }

 
  
}
