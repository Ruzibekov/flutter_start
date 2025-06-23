import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/AppColors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Set Up Profile",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        actions: [
          Text(
            "1/2",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 16),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16, bottom: 50),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primary.withAlpha(80),
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary, width: 4),
                ),
                padding: EdgeInsets.all(52),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(16.8),
                  child: SvgPicture.asset(
                    "assets/icons/ic_user.svg",
                    width: 22.4,
                    height: 22.4,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16),

              Text(
                "Profile Picture",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.gray,
                ),
              ),

              SizedBox(height: 18),

              TextField(
                decoration: InputDecoration(
                  hintText: "First Name",
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
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 16,
                      right: 8,
                      bottom: 16,
                    ),
                    child: SvgPicture.asset("assets/icons/ic_user.svg"),
                  ),
                ),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                keyboardType: TextInputType.name,
              ),

              SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, child: Text("Next")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
