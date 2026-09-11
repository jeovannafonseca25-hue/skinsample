import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  // Private constructor for Factory
  const ActionButton._({
    required this.text,
    required this.onPressed,
    required this.isPrimary,
  });

  // FACTORY PATTERN: Primary Button
  factory ActionButton.primary({
    required String text,
    required VoidCallback onPressed,
  }) {
    return ActionButton._(text: text, onPressed: onPressed, isPrimary: true);
  }

  // FACTORY PATTERN: Secondary Button
  factory ActionButton.secondary({
    required String text,
    required VoidCallback onPressed,
  }) {
    return ActionButton._(text: text, onPressed: onPressed, isPrimary: false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? Theme.of(context).primaryColor : Colors.white,
          foregroundColor: isPrimary ? Colors.white : Theme.of(context).primaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: isPrimary
                ? BorderSide.none
                : BorderSide(color: Theme.of(context).primaryColor),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}