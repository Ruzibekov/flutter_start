import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../sign_up/SignUpScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<SplashScreen> {
  double size = 100.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    });

    _timer = Timer.periodic(Duration(milliseconds: 250), (_) {
      setState(() {
        size = size == 100.0 ? 200.0 : 100.0;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          width: size,
          height: size,
          child: SvgPicture.asset(
            "assets/icons/ic_logo.svg",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
