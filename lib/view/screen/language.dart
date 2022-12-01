// ignore_for_file: unused_import, depend_on_referenced_packages, unnecessary_import, avoid_unnecessary_containers, deprecated_member_use

import 'package:dropdown_search/dropdown_search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trend_money1/menu/side_menu_section.dart';
import 'package:trend_money1/responsive.dart';
import 'package:trend_money1/screen/constanerperson.dart';

import '/core/constant/color.dart';
import '/core/constant/routes.dart';
import '/core/localization/changelocal.dart';
import '/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Container(
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("1".tr,
                        style: Theme.of(context).textTheme.headline1),
                    const SizedBox(height: 20),
                    CustomButtonLang(
                        textbutton: "العربية",
                        onPressed: () {
                          controller.changeLang("ar");
                          Get.toNamed(AppRoute.onBoarding);
                        }),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
