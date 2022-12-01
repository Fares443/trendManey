//
// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:get/get.dart';
import 'package:trend_money1/crud.dart';

///
const String linkUserinfo = 'https://trend-money.tech/api/';
const String linkServerName = 'https://trend-money.tech/api';
const String linkmembers = '$linkServerName/members/';
const String linkSignup = '$linkServerName/signup';
const String linkLogin = '$linkServerName/login';
const String linkWithdraw = '$linkServerName/swipe/';
const String linkForgetPassword = '$linkServerName/email/sendcode/';
const String linkForgetPassword2 = '$linkServerName/email/checkcode/';
const String linkForgetPassword3 = '$linkServerName/reset/password/';
const String linkhelp = '$linkServerName/support/';
const String linkcombletTask = '$linkServerName/tasks/complete/';
const String linksupport = '$linkServerName/support/';
const String linkmessage = '$linkServerName/msgs/';
Crud crud = Crud();

List linkApi = [];
RxList data = [].obs;
RxList msgs = [].obs;
var userid;
postgetUserinfo(String userId) async {
  linkApi = [];
  data.value = [];
  var response = await crud.postRequest(linkUserinfo, {
    'id': userId,
  });
  userid = userId;
  if (response != false) {
    linkApi.add(response);
    data.add(response);
    print(response);
     app();
    print('value');
  } else {
    print('not value');
    data.add(response);
  }
 
}

app() async {
  var r = await crud.getRequest(linkmessage);
  print(r[0]['text']);
  msgs.add(r[0]['text']);
}
