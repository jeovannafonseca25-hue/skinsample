import 'package:flutter/material.dart';
import '../components/common/action_button.dart';

class SampleActionButtonScreen extends StatelessWidget {
  const SampleActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo: Botões de Ação', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Estes botões usam o padrão Factory Method:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            // Factory Primário
            ActionButton.primary(
              text: 'Botão Primário (Login/Cadastrar)',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            // Factory Secundário
            ActionButton.secondary(
              text: 'Botão Secundário (Cancelar/Pular)',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}