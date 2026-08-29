import 'package:flutter/material.dart';
import '../common/app_colors.dart';
import 'sample_action_button_screen.dart';
import 'sample_tab_bar_screen.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBeige,
      appBar: AppBar(
        title: const Text('AfriDam Components', style: TextStyle(color: AppColors.textDark)),
        backgroundColor: AppColors.backgroundBeige,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMenuButton(context, 'ACTION BUTTON', const SampleActionButtonScreen()),
            const SizedBox(height: 16),
            _buildMenuButton(context, 'TAB BAR', const SampleTabBarScreen()),
            const SizedBox(height: 16),
            _buildDisabledMenuButton('LIST ITEMS (WIP)'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, Widget screen) {
    return ElevatedButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => screen)),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.textDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.primaryBrown),
        ),
      ),
      child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
    );
  }

  Widget _buildDisabledMenuButton(String title) {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}