import 'package:flutter/material.dart';
import '../components/common/action_button.dart';
import '../components/common/custom_tab_bar.dart';
import '../components/common/list_items.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  int _currentTabIndex = 0;
  bool _step1Completed = false;
  bool _step2Completed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SKIN Design System', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      // O corpo da tela
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Buttons (Action Button)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ActionButton(
              text: 'Next',
              onPressed: () {
                debugPrint('Primary button pressed');
              },
            ),
            const SizedBox(height: 12),
            ActionButton(
              text: 'Cancel',
              isPrimary: false, // Exemplo de variação do botão
              onPressed: () {
                debugPrint('Secondary button pressed');
              },
            ),

            const SizedBox(height: 40),

            const Text(
              'List Items (Routine Cards)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            RoutineListItem(
              title: '1. Cleanse',
              description: 'Use a gentle, non-foaming cleanser.',
              isCompleted: _step1Completed,
              onChanged: (val) {
                setState(() => _step1Completed = val ?? false);
              },
            ),
            RoutineListItem(
              title: '2. Treat',
              description: 'Apply your active serums directly to the skin.',
              isCompleted: _step2Completed,
              onChanged: (val) {
                setState(() => _step2Completed = val ?? false);
              },
            ),
          ],
        ),
      ),
      // A barra inferior
      bottomNavigationBar: CustomTabBar(
        currentIndex: _currentTabIndex,
        onTap: (index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
      ),
    );
  }
}