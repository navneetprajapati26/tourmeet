import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tourmeet/screens/auth/login_screen.dart';
import 'package:tourmeet/screens/dashboard/dashboard.dart';
import 'package:tourmeet/screens/home/home_screen.dart';
import 'package:tourmeet/screens/massege/massege_screen.dart';
import 'package:tourmeet/screens/splesh/first_screen.dart';
import 'package:tourmeet/screens/users_profile/users_profile_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xffffff),
      statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: UserProfilesScreen(),
      //home:  Dashboard(),
      home: FirstScreen(),
    );
  }
}
