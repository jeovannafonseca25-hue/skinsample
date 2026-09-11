import 'package:flutter/material.dart';
import '../components/common/action_button.dart';
import '../components/common/custom_tab_bar.dart';
import 'sample_action_button_screen.dart';
import 'sample_tab_bar_screen.dart';
import 'error_screen.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo do Design System', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Telas de Exemplo (Conforme Quadro)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 16),

            // Navega para a tela "SAMPLE ACTION BUTTON SCREEN"
            ActionButton.primary(
              text: 'Ver Tela de Botões de Ação',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SampleActionButtonScreen()),
                );
              },
            ),
            const SizedBox(height: 12),

            // Navega para a tela "SAMPLE TAB BAR SCREEN"
            ActionButton.primary(
              text: 'Ver Tela de Tab Bar',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SampleTabBarScreen()),
                );
              },
            ),

            const SizedBox(height: 40),

            const Text(
                'Estados de Erro',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 16),

            // Navega para a tela de Erro Personalizada
            ActionButton.secondary(
              text: 'Simular Erro no App 🐛',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ErrorScreen(
                      onRetry: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Aplicando hidratante no servidor...')),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
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