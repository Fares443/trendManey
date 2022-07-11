// ignore_for_file: depend_on_referenced_packages, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:trend_money1/core/constant/color.dart';
import 'package:trend_money1/link_api.dart';


class ContanerPerson extends StatelessWidget {
  const ContanerPerson({
    Key? key,
  }) : super(key: key);
// getUser(String memberName) async {
//     var response = await http.get(Uri.parse(linkmembers));
//     print(response);
//           for( var r in response){
//             if(r['Name']== memberName){
// return r['number_of_daily_tasks'];
//             }
//           }
 // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 142, 135, 135),
                offset: Offset(0, 30),
                blurRadius: 50)
          ],
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
           
              child: const Text(
                ' مستواك : VIP5',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.backgroundcolor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo'),
              ),
            ),
          ),
          //فتره الصلاحية
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child:  Text(
                  // ignore: prefer_is_empty
                  ' مهام يومية ${linkmembersapi.length > 0 ? linkmembersapi[0]['number_of_daily_tasks']:''} ',
                  style:const  TextStyle(
                      fontSize: 14,
                      color: AppColor.backgroundcolor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo'),
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      '   فتره صلاحية العضوية',
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColor.backgroundcolor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      '365 Days',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColor.backgroundcolor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
