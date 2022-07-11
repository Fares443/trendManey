// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, must_be_immutable, camel_case_types, sized_box_for_whitespace, unused_import, deprecated_member_use, avoid_print


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:url_launcher/url_launcher.dart';

class Vip extends StatelessWidget {
  const Vip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBarscreen('Vip'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView( children: [
          buildVip('Silver', 'سعر المهمة : 1 ', 'مهام يومية : 10 ',
              'assets/images/سيلفر شفاف1.png', '500',const Color.fromARGB(255, 163, 163, 161)),
        const SizedBox(
          height: 20,
        ),
        buildVip('Golden', 'سعر المهمة : 2 ', 'مهام يومية : 20 ',
            'assets/images/golden 2.png', '2500',const Color(0xff795c22)),
        const SizedBox(
          height: 20,
        ),
        buildVip('Diamond', 'سعر المهمة : 2,8 ', 'مهام يومية : 48 ',
            'assets/images/الالماسي3.png', '6000',const Color(0xff5f0136)),
        const SizedBox(
          height: 20,
        ),
        buildVip('Premiere', 'سعر المهمة : 4,8 ', 'مهام يومية : 55 ',
            'assets/images/البريمير 4.png', '10000',const Color(0xff313b46)),
        const SizedBox(
          height: 20,
        ),
        ]),
      ),
    );
  }
}

class buildVip extends StatelessWidget {
  buildVip(this.title, this.subtitle, this.threetitie, this.image, this.int,this.color);
  String title, subtitle, threetitie, image, int;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      child: Container(
      
        width: double.infinity,
        height: 120,
        child: Row(children: [
          Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 50,
            ),
          ),
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColor.primaryColor),
              ),
            
              Text(subtitle,
                  style:  TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: color,
                      fontFamily: 'Cario',
                  )),
                  
              Text(threetitie,
                  style:  TextStyle(
                    fontSize: 15,
                     color: color,
                       fontFamily: 'Cario',
                  )),
                 
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 5,right: 20,top: 4),
            child: Column(
              children: [
                Text(
                  int,
                  style: const TextStyle(
                      fontFamily: 'Cario',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColor.primaryColor),
                ),
               const SizedBox(height: 7,),
                MaterialButton(
                   onPressed:()=>OnPressedUrl('whatsapp://send?phone=+0201021182597'),
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColor.primaryColor,
                    child: Text(
                      'دفع',
                      style: TextStyle(
                         
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColor.backgroundcolor),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
