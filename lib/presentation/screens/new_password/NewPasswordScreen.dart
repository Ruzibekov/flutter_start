import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/AppColors.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  NewPasswordState createState() => NewPasswordState();
}

class NewPasswordState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            children: [
              SvgPicture.asset("assets/icons/ic_logo.svg", height: 40),

              SizedBox(height: 56),

              Text(
                "Create New Password",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 16),

              Text(
                "Set your new password so you can Log In and access Resolve",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: AppColors.dark,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 42),

              TextField(
                decoration: InputDecoration(
                  hintText: "New Password",
                  hintStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: AppColors.hint,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      top: 16,
                      bottom: 16,
                      right: 8,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/ic_lock.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 34),

              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.hint,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      top: 16,
                      right: 8,
                      bottom: 16,
                    ),
                    child: SvgPicture.asset("assets/icons/ic_lock.svg"),
                  ),
                ),
              ),

              Expanded(flex: 1, child: Container()),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.primary, width: 2),
                      padding: EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password Policy",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.gray,
                  ),
                ),
              ),

              SizedBox(height: 5),

              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/ic_check.svg",
                    width: 16,
                    height: 16,
                  ),

                  SizedBox(width: 8),

                  Text(
                    "Length must between 8 to 20 character",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/ic_check.svg",
                    width: 16,
                    height: 16,
                  ),

                  SizedBox(width: 8),

                  Text(
                    "A combination of upper and lower case letters. ",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/ic_check.svg",
                    width: 16,
                    height: 16,
                  ),

                  SizedBox(width: 8),

                  Text(
                    "Contain letters and numbers",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/ic_check.svg",
                    width: 16,
                    height: 16,
                  ),

                  SizedBox(width: 8),

                  Text(
                    "A special character such as @, #. !, * and \$.",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
