import 'package:flutter/material.dart';
import 'package:retuma_flutter_app/styles/app_color.dart';
import 'package:retuma_flutter_app/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColor.background,
      ),
      home: const LoginPage(),
    );
  }
}
