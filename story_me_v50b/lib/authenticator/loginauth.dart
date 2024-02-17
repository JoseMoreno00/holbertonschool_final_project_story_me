import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LogInUser extends ChangeNotifier {
  LogInUser() {
    print('Esta en marcha');
  }
  Future<bool> LogInWidget(Map<String, String> formData) async {
    var url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCIO4aZzU5c4ZXX5XQDdcrnoNVupCdgO4U');
    var response = await http.post(url, body: jsonEncode(formData));
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
