import 'package:flutter/material.dart';
import 'package:uts_fashion_show/pages/sign_in_page.dart';
import 'package:uts_fashion_show/pages/splash_page.dart';
import 'package:uts_fashion_show/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
