// ignore_for_file: depend_on_referenced_packages, unused_import, duplicate_ignore, must_be_immutable, body_might_complete_normally_nullable

// ignore: unused_import
import 'package:dropdown_search/dropdown_search.dart';
import 'package:trend_money1/controller/auth/withdraw_controller.dart';
import 'package:trend_money1/core/Function/vaildinput.dart';
import 'package:trend_money1/core/constant/routes.dart';

import '/controller/auth/signup_controller.dart';
import '/core/constant/color.dart';
import '/view/widget/auth/custombuttonauth.dart';
import '/view/widget/auth/customtextbodyauth.dart';
import '/view/widget/auth/customtextformauth.dart';
import '/view/widget/auth/customtexttitleauth.dart';
import '/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
WithdrawController controller2 = Get.put(WithdrawController());
class Many extends StatefulWidget {
  const Many({Key? key}) : super(key: key);

  @override
  State<Many> createState() => _ManyState();
}

class _ManyState extends State<Many> {
  List<String> itemsList = [
    'اختر طريقة السحب',
    'Vodafone Cash',
    'Etisalat Cash',
    'Orange Money',
    'WE Pay'
  ];

  String? select = 'اختر طريقة السحب';

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryColor,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.backgroundcolor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller2.formstate2,
          child: ListView(children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "عملية السحب"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text: "يجب عليك انا تلتزم بالخطوات ليتم عملية السحب بنجاح"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              vaild: (val) {
              //  return validInput(val!, 11, 12, 'phone');
              },
              mycontroller: controller2.mobile,
              hinttext: "ادخل رقم الموبيل",
              iconData: Icons.phone_android_outlined,
              labeltext: "رقم الموبيل",
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              vaild: (val) {
               return validInput(val!, 5, 30, 'password');
              },
              mycontroller: controller2.pass,
              hinttext: "ادخل الكلمة المرور",
              iconData: Icons.lock_outline,
              labeltext: "كلمة المرور",
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              vaild: (val) {
                // return validInput(val!, 11, 12, 'phone');
              },
              mycontroller: controller2.amount,
              hinttext: "حدد قيمة السحب",
              iconData: Icons.monetization_on,
              labeltext: "المبلغ",
            ),
            SizedBox(
              width: 300,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(66, 60, 58, 58)),
                    ),
                    hintText: '2',
                    hintStyle: const TextStyle(
                        fontSize: 14, color: Color.fromARGB(66, 60, 58, 58)),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    label: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 9),
                        child: const Text('طريقةالسحب')),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                value: select,
                items: itemsList
                    .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ))
                    .toList(),
                onChanged: (item) {
                  setState(() => select = item);
                  controller2.payment.text = select! ;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtomAuth(
                text: "اتمام",
                onPressed: () {
                  controller2.withdraw();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
