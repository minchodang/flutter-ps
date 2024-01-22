import 'dart:convert';

import 'package:flutter_application_1/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberUser {
  static Future<void> saveRememberUserInfo(User userInfo) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userJsonData = jsonEncode(userInfo.toJson());
    await preferences.setString('currentUser', userJsonData);
  }
}
