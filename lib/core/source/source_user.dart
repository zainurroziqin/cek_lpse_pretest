import 'package:cek_lpse_pretest/core/config/api.dart';
import 'package:cek_lpse_pretest/core/config/app_request.dart';
import 'package:cek_lpse_pretest/core/config/session.dart';
import 'package:cek_lpse_pretest/core/models/user.dart';
import 'package:cek_lpse_pretest/presentation/controller/c_user.dart';
import 'package:get/get.dart';

class SourceUser {
  static Future<bool> login(String username, String password) async {
    String url = '${Api.baseUrl}/login';
    Map? responseBody = await AppRequest.post(
        url, {"nomor_induk_pegawai": username, "password": password});
    if (responseBody == null) return false;
    if (responseBody['status'] == null) return false;
    if (responseBody['status']) {
      var mapUser = responseBody['data'];
      Session.saveUser(User.fromJson(mapUser));
      final cUser = Get.put(CUser());
      cUser.setData(User.fromJson(mapUser));
    }
    return responseBody['status'];
  }

  static Future<bool> logout(String token) async {
    String url = '${Api.baseUrl}/logout';
    Map? responseBody = await AppRequest.postWithToken(url, {}, token);
    if (responseBody == null) return false;
    if (responseBody['status']) {
      Session.clearUser();
    }
    return responseBody['status'];
  }
}
