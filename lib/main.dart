import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flw_startup/constants/constants.dart';
import 'package:flw_startup/views/entrypoint.dart';
import 'package:get/get.dart';

Widget defaultHome = MainScreen();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FLW Startup',
          theme: ThemeData(
              scaffoldBackgroundColor: kOffWhite,
              iconTheme: const IconThemeData(color: kDark),
              primarySwatch: Colors.grey),
          home: defaultHome,
        );
      },
    );
  }
}
