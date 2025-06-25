import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/AppColors.dart';
import '../otp_verification/OTPVerificationScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpScreen> {
  bool isChecked = false;
  String emailField = "";
  double btnSignUpOpacity = 1;

  @override
  Widget build(BuildContext context) {
    if (isChecked && emailField.isNotEmpty) {
      btnSignUpOpacity = 1;
    } else {
      btnSignUpOpacity = 0.5;
    }

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

              TextField(
                onChanged: (value) {
                  setState(() {
                    emailField = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Email ID",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                    color: AppColors.hint,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      bottom: 16,
                      right: 8,
                      top: 16,
                    ),
                    child: SvgPicture.asset("assets/icons/ic_email.svg"),
                  ),
                ),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                  color: Colors.black,
                ),
                keyboardType: TextInputType.emailAddress,
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

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: isChecked ? () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OTPVerificationScreen())
                      );
                    } : null,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: AppColors.primary.withOpacity(btnSignUpOpacity),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary.withOpacity(btnSignUpOpacity),
                      ),
                    ),
                  ),
                ),
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

              Text(
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
            ],
          ),
        ),
      ),
    );
  }
}
