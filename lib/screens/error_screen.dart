import 'package:flutter/material.dart';
import '../components/common/action_button.dart';

class ErrorScreen extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onRetry;

  const ErrorScreen({
    super.key,
    this.errorMessage = 'Nossa Inteligência Artificial esqueceu de passar protetor solar e os servidores fritaram! 🥵',
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.healing_outlined,
                size: 100,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 32),
              const Text(
                'Ops, deu ruim na cútis!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 16),
              Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.5),
              ),
              const SizedBox(height: 24),
              const Text(
                'Estamos aplicando um pouco de Aloe Vera no sistema. Aguarde um instante e tente de novo.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54),
              ),
              const SizedBox(height: 48),
              ActionButton.primary(
                text: 'Tentar Novamente',
                onPressed: onRetry,
              ),
              const SizedBox(height: 16),
              ActionButton.secondary(
                text: 'Voltar para Segurança',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}