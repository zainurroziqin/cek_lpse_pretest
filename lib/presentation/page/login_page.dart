import 'package:cek_lpse_pretest/core/config/app_color.dart';
import 'package:cek_lpse_pretest/presentation/controller/c_login.dart';
import 'package:cek_lpse_pretest/presentation/page/main_page.dart';
import 'package:cek_lpse_pretest/presentation/widget/custom_button.dart';
import 'package:cek_lpse_pretest/presentation/widget/custom_dialog.dart';
import 'package:cek_lpse_pretest/presentation/widget/custom_text_field_pref_icon.dart';
import 'package:cek_lpse_pretest/presentation/widget/custom_text_field_pref_suff_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;

  final cLogin = Get.put(CLogin());

  login() async {
    if (usernameController.text.isEmpty) {
      Get.snackbar("Error", "Field username tidak boleh kosong",
          backgroundColor: Colors.red, colorText: Colors.white);
    } else if (passwordController.text.isEmpty) {
      Get.snackbar("Error", "Field password tidak boleh kosong",
          backgroundColor: Colors.red, colorText: Colors.white);
    } else {
      await cLogin.login(usernameController.text, passwordController.text);
      if (cLogin.successLogin) {
        Get.snackbar("Success", "Login Berhasil",
            backgroundColor: primaryColor,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM);
        Get.off(const MainPage());
      } else {
        Get.snackbar("Error", "Login Gagal",
            backgroundColor: Colors.red,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Image.asset(
                  'assets/images/img_logo.png',
                  width: 150.w,
                  height: 150.w,
                ),
                SizedBox(
                  height: 8.h,
                ),
                const Text(
                  "Cek LPSE ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 72.h,
                ),
                Center(
                  child: SizedBox(
                    width: 283.w,
                    height: 50.h,
                    child: CustomTextWidgetPrefIcon(
                      controller: usernameController,
                      hint: "NIP",
                      icon: const Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: SizedBox(
                    width: 283.w,
                    height: 50.h,
                    child: CustomTextWidgetPrefSuffIcon(
                      onTap: () {
                        if (hidePassword) {
                          setState(() {
                            hidePassword = false;
                          });
                        } else {
                          setState(() {
                            hidePassword = true;
                          });
                        }
                      },
                      obsecureText: hidePassword,
                      controller: passwordController,
                      hint: "Password",
                      iconPreff: const Icon(Icons.lock),
                      iconSuff: hidePassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: CustomButton(
                    width: 283.w,
                    height: 50.h,
                    onTap: () => login(),
                    backgroundColor: const Color.fromARGB(255, 59, 59, 59),
                    text: "SIGN IN",
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Lupa Password?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Klik Disini",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 47, 182, 51)),
                    ),
                  ],
                )
              ],
            ),
            Obx(() {
              if (cLogin.loading) {
                return showCustomLoadingDialog(context);
              }
              return const SizedBox.shrink();
            })
          ],
        ),
      ),
    );
  }
}
