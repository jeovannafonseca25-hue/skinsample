import 'package:flutter/material.dart';
import '../common/app_colors.dart';
import '../components/tab_bar/custom_tab_bar.dart';

class SampleTabBarScreen extends StatefulWidget {
  const SampleTabBarScreen({Key? key}) : super(key: key);

  @override
  State<SampleTabBarScreen> createState() => _SampleTabBarScreenState();
}

class _SampleTabBarScreenState extends State<SampleTabBarScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(
        title: const Text('Tab Bar Sample', style: TextStyle(color: AppColors.textDark)),
        backgroundColor: AppColors.backgroundBeige,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.textDark),
      ),
      body: Center(
        child: Text(
          'Selected Tab: $_currentIndex',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.textDark),
        ),
      ),
      bottomNavigationBar: CustomTabBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}