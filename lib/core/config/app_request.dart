import 'dart:convert';

import 'package:http/http.dart' as http;

class AppRequest {
  static Future<Map?> gets(String url, String? token) async {
    try {
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': "Bearer $token"});
      Map responseBody = jsonDecode(response.body);
      return responseBody;
    } catch (e) {
      return null;
    }
  }

  static Future<Map?> post(String url, Object? body) async {
    try {
      var response = await http.post(Uri.parse(url), body: body);
      Map responseBody = jsonDecode(response.body);
      return responseBody;
    } catch (e) {
      return null;
    }
  }

  static Future<Map?> postWithToken(
      String url, Object? body, String? token) async {
    try {
      var response = await http.post(Uri.parse(url),
          body: body, headers: {"Authorization": "Bearer $token"});
      Map responseBody = jsonDecode(response.body);
      return responseBody;
    } catch (e) {
      return null;
    }
  }
}
