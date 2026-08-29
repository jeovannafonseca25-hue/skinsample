import 'package:flutter/material.dart';
import 'screens/sample_screen.dart';

void main() {
  runApp(const AfriDamApp());
}

class AfriDamApp extends StatelessWidget {
  const AfriDamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AfriDam Sample App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto', // Pode ser alterado para a fonte exata do Figma depois
        primarySwatch: Colors.brown,
      ),
      home: const SampleScreen(),
    );
  }
}
