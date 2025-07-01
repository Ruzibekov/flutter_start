import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/theme/AppColors.dart';

class AppTextField extends StatelessWidget {
  final Function(String) onChanged;
  final TextInputType inputType;
  final bool obscureText;
  final String hintText;
  final Widget? prefixIcon;

  const AppTextField({
    super.key,
    required this.onChanged,
    this.hintText = "",
    this.inputType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
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
          child: prefixIcon,
        ),
      ),
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        fontFamily: "Poppins",
        color: Colors.black,
      ),
      keyboardType: inputType,
      obscureText: obscureText,
    );
  }
}
