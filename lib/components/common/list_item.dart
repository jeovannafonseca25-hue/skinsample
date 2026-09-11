import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String description;
  final bool isCompleted;
  final VoidCallback onTap; // Usando onTap para clicar na caixa inteira

  const ListItem({
    super.key,
    required this.title,
    required this.description,
    this.isCompleted = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Onde o erro costuma acontecer
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFE8E8E8), // Cinza claro do Figma
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ),
            // O Checkbox grande quadrado do Figma
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: isCompleted
                  ? const Icon(Icons.check, color: Color(0xFFA07154), size: 32)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}