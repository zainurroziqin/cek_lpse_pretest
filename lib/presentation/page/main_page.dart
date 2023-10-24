import 'package:cek_lpse_pretest/core/config/app_color.dart';
import 'package:cek_lpse_pretest/presentation/page/home/absen_page.dart';
import 'package:cek_lpse_pretest/presentation/page/home/home_page.dart';
import 'package:cek_lpse_pretest/presentation/page/home/informasi_page.dart';
import 'package:cek_lpse_pretest/presentation/page/home/kehadiran_page.dart';
import 'package:cek_lpse_pretest/presentation/page/home/profile_page.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<FlashyTabBarItem> items = [
    FlashyTabBarItem(
        icon: Icon(
          Icons.home,
          color: primaryColor,
        ),
        title: Text(
          'Home',
          style: TextStyle(color: primaryColor),
        )),
    FlashyTabBarItem(
        icon: Icon(
          Icons.assessment,
          color: primaryColor,
        ),
        title: Text("Kehadiran", style: TextStyle(color: primaryColor))),
    FlashyTabBarItem(
        icon: Icon(
          Icons.center_focus_weak,
          color: primaryColor,
        ),
        title: Text("Absen", style: TextStyle(color: primaryColor))),
    FlashyTabBarItem(
        icon: Icon(
          Icons.credit_card,
          color: primaryColor,
        ),
        title: Text("Informasi", style: TextStyle(color: primaryColor))),
    FlashyTabBarItem(
        icon: Icon(
          Icons.account_circle_rounded,
          color: primaryColor,
        ),
        title: Text("profile", style: TextStyle(color: primaryColor)))
  ];

  final List<Widget> _widgethome = <Widget>[
    const HomePage(),
    const KehadiranPage(),
    const AbsenPage(),
    const InformasiPage(),
    const ProfilePage()
  ];

  int visit = 0;
  double height = 30;
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgethome.elementAt(visit),
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        items: items,
        backgroundColor: Colors.white,
        iconSize: 28,
        selectedIndex: visit,
        onItemSelected: (int index) => setState(() {
          visit = index;
        }),
        showElevation: true,
      ),
    );
  }
}

