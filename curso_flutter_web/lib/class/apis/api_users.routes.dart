import 'dart:convert';

import 'package:curso_flutter_web/class/apis/api_users.models.dart';
import 'package:http/http.dart' as http;

class ApiUsers {
  Future<LoginUsers> login_users(final data, final password) async {
    try {
      String apiUrl = 'http://localhost:3030/api/users/auth-login';

      final api = Uri.parse(apiUrl);
      final response = await http.post(api,
          headers: {"content-type": "application/json"},
          body: jsonEncode({'data': data, 'password': password}));

      final String responseString = response.body;

      if (response.statusCode == 200) {
        return loginUsers(responseString);
      } else {
        return loginUsers(responseString);
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
