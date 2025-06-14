import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/screens/otp_verification/OTPVerificationScreen.dart';
import 'package:flutter_start/presentation/screens/sign_up/SignUpScreen.dart';

import 'presentation/screens/no_internet/NoInternetScreen.dart';
import 'presentation/screens/splash/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My second app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OTPVerificationScreen(),
    );
  }
}
