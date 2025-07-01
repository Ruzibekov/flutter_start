import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/components/AppTextField.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/AppColors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<StatefulWidget> createState() => SignInState();
}

class SignInState extends State<SignInScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            children: [
              SvgPicture.asset("assets/icons/ic_logo.svg", height: 40),

              SizedBox(height: 56),

              Text(
                "Welcome back",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: AppColors.primary,
                  fontSize: 28,
                ),
              ),

              SizedBox(height: 16),

              Text(
                "Please enter your email id or password to Sign In",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  color: AppColors.dark,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 18),

              AppTextField(
                onChanged: (value) {
                  email = value;
                },
                hintText: "Email ID",
                inputType: TextInputType.emailAddress,
                prefixIcon: SvgPicture.asset("assets/icons/ic_email.svg"),
              ),

              SizedBox(height: 36),

              AppTextField(
                onChanged: (value) {
                  password = value;
                },
                hintText: "Password",
                inputType: TextInputType.visiblePassword,
                obscureText: true,
                prefixIcon: SvgPicture.asset("assets/icons/ic_lock.svg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
