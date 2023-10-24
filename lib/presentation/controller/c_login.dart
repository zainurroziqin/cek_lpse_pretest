import 'package:cek_lpse_pretest/core/source/source_user.dart';
import 'package:get/get.dart';

class CLogin extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _successLogin = false.obs;
  bool get successLogin => _successLogin.value;

  login(String username, String password) async {
    _loading.value = true;
    _successLogin.value = await SourceUser.login(username, password);
    update();
    _loading.value = false;
  }
}
