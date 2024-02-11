import 'package:flutter/material.dart';
import 'package:ledmatrix/pages/ledmatrix.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Led Matrix',
      home: const LedMatrix(),
    );
  }
}
