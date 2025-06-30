import 'dart:async' show Future, Timer;

import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/screens/no_internet/NoInternetScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../extension/Extension.dart';
import '../sign_up/SignUpScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<SplashScreen> {
  double size = 100.0;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1)).then((_) => openNextScreen());

    timer = Timer.periodic(Duration(milliseconds: 250), (_) {
      setState(() {
        size = size == 100.0 ? 200.0 : 100.0;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
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

  void openNextScreen() async {
    bool connected = await isInternetAvailable();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            connected ? const SignUpScreen() : const NoInternetScreen(),
      ),
    );
  }
}
