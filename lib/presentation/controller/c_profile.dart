import 'package:cek_lpse_pretest/core/source/source_user.dart';
import 'package:get/get.dart';

class CProfile extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _successLogout = false.obs;
  bool get successLogout => _successLogout.value;

  logout(String token) async {
    _loading.value = true;
    _successLogout.value = await SourceUser.logout(token);
    update();
    _loading.value = false;
  }
}
