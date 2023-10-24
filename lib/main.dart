import 'package:cek_lpse_pretest/presentation/page/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, child) {
        return GetMaterialApp(
            title: "CekLPSE Pretest",
            debugShowCheckedModeBanner: false,
            home: child,
            theme: ThemeData.light());
      },
      child: const SplashScreen(),
    );
  }
}
