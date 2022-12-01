// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, must_be_immutable, camel_case_types, sized_box_for_whitespace, unused_import, deprecated_member_use, avoid_print, avoid_single_cascade_in_expression_statements


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/screen/onpressedurl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
class Vip extends StatelessWidget {
  const Vip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEEAE6),
     appBar: AppBarscreen('VIP'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView( children: [
           const SizedBox(
          height: 20,
        ),
          buildVip((){
         AwesomeDialog(
                          padding: const EdgeInsets.only(left: 15,right: 15),

          alignment:Alignment.center ,
            context: context,
            animType: AnimType.rightSlide,
            dialogType: DialogType.success,
            body: const Center(child: Text(
                    'عند دعوه 2 للاشتراك\n في شهر تحصل علي سحب فوري لهذا الشهر',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: AppColor.black
                    ),
                  ),),
            btnOkOnPress: () {},
            )..show();
        },'VIP 1',
              'assets/images/vip1.png'),
        const SizedBox(
          height: 20,
        ),
         buildVip((){
             AwesomeDialog(
                padding: const EdgeInsets.only(left: 15,right: 15),
          alignment:Alignment.center ,
            context: context,
            animType: AnimType.rightSlide,
            dialogType: DialogType.success,
            body: const Center(child: Text(
                 'عند دعوه 3 للاشتراك\n في شهر تحصل علي سحب فوري لهذا الشهر+مكافئه ماليه أضافيه (10-30-50-100-200) تحدد علي حسب الباقه',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: AppColor.black
                    ),
                  ),),
            btnOkOnPress: () {},
            )..show();
        },'VIP 2', 
              'assets/images/vip2.png'),
        const SizedBox(
          height: 20,
        ),
        buildVip((){
            AwesomeDialog(
              padding: const EdgeInsets.only(left: 15,right: 15),
          alignment:Alignment.center ,
            context: context,
            animType: AnimType.rightSlide,
            dialogType: DialogType.success,
            body: const Center(child: Text(
                   'عند دعوه 4 للاشتراك \nفي شهر تحصل علي سحب فوري لهذا الشهر+مكافئه ماليه أضافيه +سحب جميع مكافئات الاشتراك لهذا الشهر',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: AppColor.black
                    ),
                  ),),
            btnOkOnPress: () {},
            )..show();
        },'VIP 3', 

            'assets/images/vip33.png',),
        const SizedBox(
          height: 20,
        ),
        buildVip((){
             AwesomeDialog(
                            padding: const EdgeInsets.only(left: 15,right: 15),

          alignment:Alignment.center ,
            context: context,
            animType: AnimType.rightSlide,
            dialogType: DialogType.success,
            body: const Center(child: Text(
                  'عند دعوه 5 للاشتراك\n في شهر لمدة 3 شهور تحصل علي سحب فوري لهذا الشهر+مكافئه ماليه أضافيه +سحب جميع مكافئات الاشتراك +ربح رحله داخل مصر مدفوعه المصاريف(شرم-الشيخ-دهب...)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: AppColor.black
                    ),
                  ),),
            btnOkOnPress: () {},
            )..show();
        },'VIP 4', 
            'assets/images/vip4.png'),
        const SizedBox(
          height: 20,
        ),
      
      
        buildVip((){
             AwesomeDialog(
          alignment:Alignment.center ,
            context: context,
            animType: AnimType.rightSlide,
            dialogType: DialogType.success,
            body: const Center(child: Text(
                    'عند دعوه 7 للاشتراك\n في شهر لمدة 5 أشهر علي التوالي سحب فوري لهذا الشهر+مكافئه ماليه أضافيه +سحب جميع مكافئات الاشتراك +ربح جوائز معنويه (سبيكه ذهب - اجهزه كهربائية - أيفون)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: AppColor.black
                    ),
                  ),),
            btnOkOnPress: () {},
            )..show();
        },'VIP 5', 
            'assets/images/vip6.png'),
        const SizedBox(
          height: 20,
        ),
       
        ]),
      ),
    );
  }
}

class buildVip extends StatelessWidget {
  buildVip(this.onPressed,this.title, this.image);
  String title, image;
  
   void Function()? onPressed;
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
               
                borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ClipRRect(
               borderRadius:BorderRadius.circular(22) ,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 50,
              ),
            ),
          ),
           const Spacer(),
          Column(
           // mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: AppColor.primaryColor),
              ),
            
              
             
                 
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20,top: 4),
            child: Column(
              children: [
               
               const SizedBox(height: 45,),
                Container(
                  padding:const EdgeInsets.only(left: 20,right: 20) ,
                  margin: const EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromARGB(255, 54, 53, 53)
                  ),
                  child: MaterialButton(
                     onPressed: onPressed,
                    child: const Text(
                      'المكافئة',
                      style: TextStyle(
                         
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
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
