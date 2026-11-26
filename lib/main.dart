import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cuevas_mobprog/constants.dart';
import 'package:cuevas_mobprog/screens/home_screen.dart';
import 'package:cuevas_mobprog/screens/newsfeed_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: appName,
          initialRoute: "/home",
          routes: {
            "/newsfeed": (context) => const NewsfeedScreen(),
            "/home": (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}