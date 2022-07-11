//
import 'package:trend_money1/crud.dart';

///
const String linkUserinfo = 'https://trend-money.tech/api/';
const String linkServerName = 'https://trend-money.tech/api';
const String linkmembers = '$linkServerName/members/';
const String linkSignup = '$linkServerName/signup';
const String linkLogin = '$linkServerName/login';

Crud crud = Crud();
List? linkApi = [];
postgetUserinfo(String userId) async {
  var response = await crud.postRequest(linkUserinfo, {
    'id': userId,
  });
  linkApi!.add(response);
}

List linkmembersapi = [];
postgetmembers(String userId) async {
  var response = await crud.postRequest(linkmembers, {
    'id': userId,
  });
  linkmembersapi.add(response);
}
