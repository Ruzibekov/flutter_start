import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/screens/sign_up/components/OutlinedButton.dart';
import 'package:flutter_start/presentation/screens/sign_up/components/SignUpTextField.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/AppColors.dart';
import '../otp_verification/OTPVerificationScreen.dart';
import '../sign_in/SignInScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpScreen> {
  bool isChecked = false;
  String emailField = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            children: [
              SvgPicture.asset("assets/icons/ic_logo.svg", height: 40),

              SizedBox(height: 56),

              Text(
                "Sign Up",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.primary,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 16),

              Text(
                "Please enter your Email ID to Sign Up.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.dark,
                ),
              ),

              SizedBox(height: 42),

              SignUpTextField(
                onChanged: (value) {
                  setState(() {
                    emailField = value;
                  });
                },
              ),

              SizedBox(height: 48),

              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                      activeColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      side: BorderSide(color: AppColors.primary, width: 2),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Text(
                        "By continuing, I confirm that I have read the Terms of Use and Privacy Policy",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: AppColors.hint,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(flex: 1, child: Container()),

              AppOutlinedButton(
                enabled: isChecked && emailField.isNotEmpty,
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OTPVerificationScreen(),
                    ),
                  );
                },
              ),

              SizedBox(height: 73),

              Text(
                "Already a Kooves Member?",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: AppColors.dark,
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
