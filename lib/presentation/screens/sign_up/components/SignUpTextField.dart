import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/AppColors.dart';

class SignUpTextField extends StatelessWidget {
  final Function(String) onChanged;

  const SignUpTextField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
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
    );
  }
}
