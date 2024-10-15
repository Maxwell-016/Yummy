import 'package:flutter/material.dart';

enum ColorSelection{
  deepPurple('Deep purple',Colors.deepPurple),
  purple('Purple',Colors.purple),
  indigo('Indigo',Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink);

  final String label;
  final Color color;
  const ColorSelection(
      this.label,
      this.color,
      );
}