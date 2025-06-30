import 'package:flutter/material.dart';
import 'package:flutter_start/extension/Extension.dart';
import 'package:flutter_start/presentation/screens/sign_up/SignUpScreen.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/AppColors.dart';
import '../sign_up/components/PrimaryButton.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 72, bottom: 84),
          width: double.infinity,
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/icons/ic_no_internet.svg",
                width: 224,
                height: 224,
              ),

              SizedBox(height: 40),

              Text(
                "Ooops!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 16),

              Text(
                "No internet connection found.\nCheck your connection.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  color: AppColors.gray,
                  fontWeight: FontWeight.normal,
                ),
              ),

              SizedBox(height: 170),

              PrimaryButton(
                onClick: () {
                  onRefreshClick(context);
                },
                text: "Refresh",
                padding: EdgeInsets.symmetric(horizontal: 67),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onRefreshClick(BuildContext context) async {
    if (await isInternetAvailable()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    }
  }
}
