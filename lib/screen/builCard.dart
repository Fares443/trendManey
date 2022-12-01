// ignore: depend_on_referenced_packages
// ignore_for_file: must_be_immutable, camel_case_types, depend_on_referenced_packages, use_key_in_widget_constructors, file_names, duplicate_ignore, sized_box_for_whitespace, unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:url_launcher/url_launcher.dart';

class builCard extends StatelessWidget {
  builCard(
      {required this.image,
      required this.color,
      required this.title,
      required this.onPressed});

  String image, title;
  bool appcolor = false;
  Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        child: Container(
          width: double.infinity,
          height: 120,
          child: Row(children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
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
                      fontSize: 20,
                      color: AppColor.primaryColor),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 4),
              child: Column(
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 54, 53, 53)),
                    child: MaterialButton(
                      onPressed: onPressed,
                      child: const Text(
                        'فتح الرابط',
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
      ),

      //   elevation: 30,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      //   child: ListTile(

      //     leading: Image.asset(
      //       image,
      //       fit: BoxFit.fill,
      //       height: 50,
      //       width: 70,
      //     ),
      //     title: MaterialButton(
      //       padding: const EdgeInsets.symmetric(horizontal: 50),
      //       shape:
      //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      //       color: AppColor.primaryColor,
      //       onPressed:onPressed,
      //       child: const Text(
      //         'فتح الرابط',
      //         style: TextStyle(color: AppColor.backgroundcolor),
      //       ),
      //     ),
      //     subtitle: const Text('https://m.com/messages'),
      //   ),
      // ),
    );
  }
}
