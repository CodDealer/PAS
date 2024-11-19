import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobilee_11pplg2_24/LandingPage.dart';
import 'package:pas1_mobilee_11pplg2_24/Pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ini test',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/home', page:() => Landingpage()),
      ],
    );
  }
}
