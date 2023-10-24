import 'dart:async';

import 'package:cek_lpse_pretest/core/config/session.dart';
import 'package:cek_lpse_pretest/core/models/user.dart';
import 'package:cek_lpse_pretest/presentation/page/login_page.dart';
import 'package:cek_lpse_pretest/presentation/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  checkLogin() async {
    User user = await Session.getUser();
    if (user.idPegawai == null) {
      Timer(const Duration(seconds: 2), () {
        Get.off(() => const LoginPage());
      });
    } else {
      Timer(const Duration(seconds: 2), () {
        Get.off(() => const MainPage());
      });
    }
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.asset(
          'assets/images/img_logo.png',
          width: 200.w,
          height: 200.w,
        ),
      )),
    );
  }
}
