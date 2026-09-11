import 'package:flutter/material.dart';
import 'screens/sample_screen.dart';

void main() {
  runApp(const SkinApp());
}

class SkinApp extends StatelessWidget {
  const SkinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo SKIN', // UI Text in Portuguese
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFA07154),
        scaffoldBackgroundColor: const Color(0xFFF3EFEA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFA07154),
          primary: const Color(0xFFA07154),
        ),
      ),
      home: const SampleScreen(),
    );
  }
}