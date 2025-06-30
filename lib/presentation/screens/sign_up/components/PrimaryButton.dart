import 'package:flutter/material.dart';

import '../../../../core/theme/AppColors.dart';

class PrimaryButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final VoidCallback onClick;
  final String text;

  const PrimaryButton({
    super.key,
    required this.onClick,
    required this.text,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: double.infinity,
        height: 44,
        child: TextButton(
          onPressed: onClick,
          style: TextButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
