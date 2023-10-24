import 'package:cek_lpse_pretest/core/models/user.dart';
import 'package:get/get.dart';

class CUser extends GetxController {
  final _data = User().obs;
  User get data => _data.value;
  setData(n) => _data.value = n;
}