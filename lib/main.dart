import 'package:flutter/material.dart';
import 'package:login_register/screens/loginPage.dart';
import 'package:login_register/screens/onBoardingPage.dart';
import 'package:login_register/screens/registerPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
      routes: {
        LoginPage.loginStringKey: (context) => const LoginPage(),
        RegisterPage.loginStringKey: (context) => const RegisterPage(),
      },
    );
  }
}
