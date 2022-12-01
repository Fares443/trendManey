// ignore_for_file: depend_on_referenced_packages, unused_import, unnecessary_import, avoid_unnecessary_containers, non_constant_identifier_names, prefer_is_empty, invalid_use_of_protected_member



import 'dart:ui';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_money1/controller/data.dart';
import 'package:trend_money1/crud.dart';
import 'package:trend_money1/link_api.dart';
import 'package:trend_money1/screen/appBar.dart';
import 'package:trend_money1/screen/constanerperson.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/core/constant/imgaeasset.dart';
import 'package:trend_money1/core/constant/routes.dart';
import 'package:trend_money1/screen/method.dart';

DataController controller = Get.put(DataController());

class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:FloatingActionButtonLocation.startDocked ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 18,
        onPressed: () {
      },child: Lottie.asset('assets/lottie/99561-gender-arrow-down.json')),
      appBar: AppBar(
         shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(22.0),
  ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  postgetUserinfo(userid);
                },
                icon: const Icon(Icons.refresh, color: Color(0xffef7d00)),
              ),
            ),
          ),
        ],
        elevation: 0,
        title: const Text(
          'TREND MONEY',
          style: TextStyle(
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
              fontSize: 20),
        ),
        backgroundColor: const Color(0xffFEEAE6),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.offAllNamed(AppRoute.login);
          },
          icon: const Icon(
            Icons.power_settings_new,
            color: AppColor.primaryColor,
          ),
        ),
      ),
        backgroundColor: AppColor.backgroundcolor,
      body: Obx(() => data.value.length == 0
          ?  Center(
              child: Lottie.asset('assets/lottie/118130-loader.json') ,
            )
          : ListView(children: [
              //مستواك VIP
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 
                           Column(
                             children: [
                                Text('${data[0]['username']}',
                      style: const TextStyle(
                        fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black)),
                               Card(
                                 color: AppColor.primaryColor,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(42),
                                   side: const BorderSide(
                                     width: 2,
                                      color: AppColor.primaryColor,
                                       )),
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 4,bottom: 4,left: 22,right: 22),
                                   child: Text('${data[0]['phone']}',
                   style: const TextStyle(
                     fontFamily: 'Cairo',
                       fontWeight: FontWeight.bold,
                       fontSize: 12,
                       backgroundColor: AppColor.primaryColor,
                                   color: Colors.white)),
                                 ),
                               ),
                             ],
                           ),
               
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColor.primaryColor,
                      child: Image.asset(
                        AppImageAsset.logo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
          const SizedBox(
                height:10,
              ),
              const ContanerPerson(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                ///1111
                padding: const EdgeInsets.only(left: 0, right:0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MethodColumn('ارباح اليوم', '(EGP)',
                            '${data.length > 0 ? data[0]['tody_earning'] : '0'}'),
                        MethodColumn('عدد الدعوات', '(EGP)',
                            '${data.length > 0 ? data[0]['total_invites'] : '0'}'),
                        MethodColumn('الرصيد المتوفر', '(EGP)',
                            '${data.length > 0 ? data[0]['available_balance'] : '0'}'),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MethodColumn('المهام الشهرية', '(@)',
                            '${data.length > 0 ? data[0]['total_tasks'] : '0'}'),
                        MethodColumn('اسم العضوية', '(@)',
                            '${data.length > 0 ? data[0]['member_ship'] : '0'}'),
                        MethodColumn('اجمالى السحوبات', '(EGP)',
                            '${data.length > 0 ? data[0]['total_balance'] : '0'}'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                      
                        const SizedBox(
                          height: 25,
                        ),
                            const Spacer(),
                              MethodButtonPerson('assets/lottie/33064-any-help.json', () {
                         Get.toNamed(AppRoute.help);
                         methodAwesomDialod(context).show();
                              }),
                            const Spacer(),
                              MethodButtonPerson('assets/lottie/lf30_editor_3cfj8oei.json', () {
                         Get.toNamed(AppRoute.many);
                              }),
                              const Spacer(),
                               ],
                    ), 
                      const SizedBox(height: 50,),
              
                 const SizedBox(height: 10,),
                Container(child: Image.asset('assets/images/مميزات وشروط الوكلاء.png',fit: BoxFit.fill,height: 600,)),     
                 const SizedBox(height: 20,),
                  ],
                ),
              ),
            ])),
    );
  }
}

 AwesomeDialog methodAwesomDialod(BuildContext context) {
    return AwesomeDialog(
       padding: const EdgeInsets.only(left:25,right: 25),
        alignment:Alignment.center ,
          context: context,
          animType: AnimType.rightSlide,
          dialogType: DialogType.success,
          body: const Center(child: Text(
' ملاحظة هامة \n عليك الاطلاع على النشرة يوميا ليصلك كل جديد',style: TextStyle(
                     fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Cairo',
                  color: AppColor.black
                  ),
                ),),
          btnOkOnPress: () {},
          );
  }

  
