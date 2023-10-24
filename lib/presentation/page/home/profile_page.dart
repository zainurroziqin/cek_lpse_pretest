import 'package:cek_lpse_pretest/core/config/app_color.dart';
import 'package:cek_lpse_pretest/presentation/controller/c_profile.dart';
import 'package:cek_lpse_pretest/presentation/controller/c_user.dart';
import 'package:cek_lpse_pretest/presentation/page/login_page.dart';
import 'package:cek_lpse_pretest/presentation/widget/custom_button.dart';
import 'package:cek_lpse_pretest/presentation/widget/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final cProfile = Get.put(CProfile());
  final cUser = Get.put(CUser());

  logout() async {
    await cProfile.logout(cUser.data.apiToken!);
    if (cProfile.successLogout) {
      Get.snackbar("Success", "Logout Berhasil",
          backgroundColor: primaryColor,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM);
      Get.off(const LoginPage());
    } else {
      Get.snackbar("Error", "Logout Gagal",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Center(
              child: CustomButton(
                  onTap: () => logout(),
                  text: "LOGOUT",
                  backgroundColor: primaryColor,
                  width: MediaQuery.of(context).size.width,
                  height: 50),
            ),
          ),
          Obx(() {
            if (cProfile.loading) {
              return showCustomLoadingDialog(context);
            }
            return const SizedBox.shrink();
          })
        ],
      )),
    );
  }
}
