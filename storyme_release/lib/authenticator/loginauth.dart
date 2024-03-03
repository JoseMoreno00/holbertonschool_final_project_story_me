import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LogInUser extends ChangeNotifier {
  LogInUser() {
    if (kDebugMode) {
      print('Esta en marcha');
    }
  }
  Future<bool> logedUser(Map<String, String> formData) async {
    var url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD1FGUKdADxeJ_SWZsNJifufJ21KabueS4');
    var response = await http.post(url, body: jsonEncode(formData));
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
