import 'package:flutter/material.dart';
import '../../common/app_colors.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isPrimary;

  const ActionButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isPrimary = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? AppColors.primaryBrown : AppColors.white,
          foregroundColor: isPrimary ? AppColors.white : AppColors.primaryBrown,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: isPrimary
                ? BorderSide.none
                : const BorderSide(color: AppColors.primaryBrown, width: 2),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}