import 'package:flutter/material.dart';
import 'package:food_delivary_app/utils/app_theme.dart';
import 'package:food_delivary_app/views/pages/custom_bottom_navbar.dart';
// import 'package:device_preview/device_preview.dart';
//import 'package:flutter/foundation.dart';



void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dona't App",
      theme: AppTheme.lightTheme,
      home: const CustomBottomNavbar(),
    );
  }
}

