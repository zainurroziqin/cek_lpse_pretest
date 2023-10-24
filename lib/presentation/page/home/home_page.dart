import 'package:cek_lpse_pretest/core/config/app_color.dart';
import 'package:cek_lpse_pretest/presentation/controller/c_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cUser = Get.put(CUser());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cek LPSE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.sp
            ),
          ),
          backgroundColor: primaryColor,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    size: 32,
                  )),
            )
          ],
        ),
        body: SafeArea(
          child: Obx(() {
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  height: 220.h,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220.h,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: 16.w, left: 20.w, top: 32.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cUser.data.namaPegawai ?? "",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  cUser.data.nomorIndukPegawai ?? "",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  cUser.data.namaLevelJabatan ?? "",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                SizedBox(
                                  width: 220.w,
                                  child: Text(
                                    "Cek LPSE",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            ClipOval(
                              child: cUser.data.fotoPegawai != null
                                  ? SizedBox(
                                      width: 100.w,
                                      height: 100.w,
                                      child: FadeInImage(
                                        image: NetworkImage(
                                            cUser.data.fotoPegawai!),
                                        placeholder: const AssetImage(
                                            "assets/images/person.png"),
                                        imageErrorBuilder:
                                            (context, error, stackTrace) {
                                          return Image.asset(
                                              'assets/images/person.png',
                                              fit: BoxFit.fitWidth);
                                        },
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Image.asset(
                                      "assets/images/person.png",
                                      width: 100.w,
                                      height: 100.w,
                                    ),
                            )
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  top: 180.h,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.w,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 8.h, left: 16.w, right: 16.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CHECK IN",
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                            color: secondaryColor),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "00:00",
                                            style: TextStyle(
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.bold,
                                                color: secondaryColor),
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            "00:00",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: secondaryColor),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 40,
                                    width: 0.6,
                                    color: Colors.grey,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CHECK OUT",
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                            color: secondaryColor),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "00:00"
                                            "",
                                            style: TextStyle(
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.bold,
                                                color: secondaryColor),
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            "00:00",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: secondaryColor),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            const Divider(
                              height: 0.6,
                              thickness: 0.6,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 60.w,
                                        height: 60.w,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12))),
                                        child: const Icon(
                                          Icons.add_alarm,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'Lembur',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: secondaryColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 60.w,
                                        height: 60.w,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12))),
                                        child: const Icon(
                                          Icons.event_busy,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'Izin',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: secondaryColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 60.w,
                                        height: 60.w,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12))),
                                        child: const Icon(
                                          Icons.people,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'Meeting',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: secondaryColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 60.w,
                                        height: 60.w,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12))),
                                        child: const Icon(
                                          Icons.article_outlined,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'Reimburse',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: secondaryColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 400.h,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Performa Kehadiran',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: secondaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: secondaryColor,
                                size: 18,
                              ),
                              Text(
                                "24 Oktober 2023",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.access_time,
                                color: secondaryColor,
                                size: 18,
                              ),
                              Text(
                                "13:00",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 428.h,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 98.w,
                            height: 108.w,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 8.h, left: 8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipOval(
                                    child: Container(
                                      width: 40.w,
                                      height: 40.w,
                                      color: Colors.red,
                                      child: const Icon(
                                        Icons.show_chart,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    'Persentase Kehadiran',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    '100%',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: secondaryColor,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 98.w,
                            height: 106.w,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 8.h, left: 8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipOval(
                                    child: Container(
                                      width: 40.w,
                                      height: 40.w,
                                      color: Colors.blueAccent,
                                      child: const Icon(
                                        Icons.accessibility,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    'Total Hari Kerja',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    '3 Hari',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 98.w,
                            height: 106.w,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 8.h, left: 8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipOval(
                                    child: Container(
                                      width: 40.w,
                                      height: 40.w,
                                      color: const Color.fromARGB(
                                          255, 233, 131, 36),
                                      child: const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    'Rata-Rata Jam Kerja',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
        ));
  }
}
