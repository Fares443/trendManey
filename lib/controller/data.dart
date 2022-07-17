// ignore_for_file: deprecated_member_use, non_constant_identifier_names, avoid_print, invalid_use_of_protected_member, must_call_super, await_only_futures

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class DataController extends GetxController {
  RxList facebookList = [].obs;
  RxList instgramList = [].obs;
  RxList tiktokList = [].obs;
  RxList youtubeList = [].obs;
  var api1 = 'https://trend-money.tech/api/tasks/?social=Facebook';
  var api2 = 'https://trend-money.tech/api/tasks/?social=Instagram';
  var api3 = 'https://trend-money.tech/api/tasks/?social=Tiktok';
  var api4 = 'https://trend-money.tech/api/tasks/?social=Youtube';

  Future getdata() async {
   try {
      var facebookurl = await Uri.parse(api1);
      var instgramurl = await Uri.parse(api2);
      var tiktokurl = await Uri.parse(api3);
      var youtuoburl = await Uri.parse(api4);
      var response1 = await http.get(facebookurl);
      var response2 = await http.get(instgramurl);
      var response3 = await http.get(tiktokurl);
      var response4 = await http.get(youtuoburl);
      var responsebody1 = await jsonDecode(response1.body);
      var responsebody2 = await jsonDecode(response2.body);
      var responsebody3 = await jsonDecode(response3.body);
      var responsebody4 = await jsonDecode(response4.body);

      for (int i = 0; i <= responsebody1.length - 1; i++) {
        facebookList.add(responsebody1[i]);
      }
      for (int i = 0; i <= responsebody2.length - 1; i++) {
        instgramList.add(responsebody2[i]);
      }
      for (int i = 0; i <= responsebody3.length - 1; i++) {
        tiktokList.add(responsebody3[i]);
      }
      for (int i = 0; i <= responsebody4.length - 1; i++) {
        youtubeList.add(responsebody4[i]);
      }
     } catch (e) {
       print('$e');
     }
  }

  @override
  void onInit() {
    getdata();
    update();
  }

  void OnPressedUrl(String uri) async {
    await launch(uri);
  }
}
