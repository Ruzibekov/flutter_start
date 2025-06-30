import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/AppColors.dart';

class AppOutlinedButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback onClick;

  const AppOutlinedButton({
    super.key,
    required this.enabled,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    double opacity = enabled ? 1.0 : 0.4;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 65),
      child: SizedBox(
        width: double.infinity,
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 150),
          child: TextButton(
            onPressed: enabled ? onClick : null,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.primary, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
              ),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
            ),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
