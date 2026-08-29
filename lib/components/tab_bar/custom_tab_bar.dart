import 'package:flutter/material.dart';
import '../../common/app_colors.dart';

class CustomTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: AppColors.backgroundBeige,
      selectedItemColor: AppColors.primaryBrown,
      unselectedItemColor: AppColors.textDark.withOpacity(0.5),
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: 'Scan'),
        BottomNavigationBarItem(icon: Icon(Icons.store_outlined), label: 'Store'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}