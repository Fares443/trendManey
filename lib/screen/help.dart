// ignore_for_file: deprecated_member_use, camel_case_types, depend_on_referenced_packages, prefer_const_constructors, avoid_print, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/screen/onpressedurl.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 350,
        child: Scaffold(
          appBar: AppBarscreen('لدعم والمساعدة'),
          body: ListView(children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/55menu.png',
              fit: BoxFit.fill,
            ),
            materialButtonMenu(
                ': التواصل مع قسم اشتراك الباقات', '/whatsappMenu', () {
              OnPressedUrl('whatsapp://send?phone=+0201024209764');
            }),
            const SizedBox(
              height: 10,
            ),
            materialButtonMenu(': التواصل مع قسم اثبات المهام', '/whatsappMenu',
                () {
              OnPressedUrl('whatsapp://send?phone=+0201021559201');
            }),
            const SizedBox(
              height: 10,
            ),
            materialButtonMenu(': التواصل مع قسم الشكاوي', '/whatsappMenu', () {
              OnPressedUrl('whatsapp://send?phone=+0201021559201');
            }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(
                    width: 30,
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

  Widget materialButtonMenu(
      String title, suptitle, void Function()? onPressed) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      onPressed: onPressed,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        child: ListTile(
          leading: Image.asset(
            'assets/images/whatsappMenu.png',
          ),
          title: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppColor.black),
          ),
          subtitle: Text(suptitle),
        ),
      ),
    );
  }
}
