import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String description;
  final bool isCompleted;
  final ValueChanged<bool?>? onChanged;

  const ListItem({
    super.key,
    required this.title,
    required this.description,
    this.isCompleted = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Checkbox(
          value: isCompleted,
          onChanged: onChanged,
          activeColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}