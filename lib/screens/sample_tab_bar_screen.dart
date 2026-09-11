import 'package:flutter/material.dart';
import '../components/common/custom_tab_bar.dart';

class SampleTabBarScreen extends StatefulWidget {
  const SampleTabBarScreen({super.key});

  @override
  State<SampleTabBarScreen> createState() => _SampleTabBarScreenState();
}

class _SampleTabBarScreenState extends State<SampleTabBarScreen> {
  int _currentTabIndex = 0;

  // Lista de conteúdos simulando a troca de páginas
  final List<Widget> _pages = const [
    Center(child: Text('Conteúdo da Home 🏠', style: TextStyle(fontSize: 24))),
    Center(child: Text('Conteúdo do Perfil 👤', style: TextStyle(fontSize: 24))),
    Center(child: Text('Conteúdo de Ajuda ❓', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo: Tab Bar', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: _pages[_currentTabIndex], // Mostra a página baseada no índice da aba
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