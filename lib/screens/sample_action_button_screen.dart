import 'package:flutter/material.dart';
import '../common/app_colors.dart';
import '../components/action_button/action_button.dart';

class SampleActionButtonScreen extends StatelessWidget {
  const SampleActionButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(
        title: const Text('Action Button Variations', style: TextStyle(color: AppColors.textDark)),
        backgroundColor: AppColors.backgroundBeige,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.textDark),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionButton(
              title: 'Get Started',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            ActionButton(
              title: 'Sign Up (Secondary)',
              isPrimary: false,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}