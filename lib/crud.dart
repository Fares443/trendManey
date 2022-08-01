// ignore_for_file: unused_local_variable, unused_import, avoid_print

import 'dart:io';

import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Crud {
  Future<bool> checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connect');
        return true;
      } else {
        print('not connect');
        return false;
      }
    } on SocketException catch (e) {
      print(e);
      return false;
    }
  }

  getRequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);

        return responsebody;
      } else {
        print('Error ${response.statusCode}');
      }
    } catch (e) {
      print('Error $e');
    }
  }

  postRequest(String url, Map data) async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        print('Error ${response.statusCode}');
        print('statusCode');
      }
    } catch (e) {
      print('Error $e');
    }
  }
}
