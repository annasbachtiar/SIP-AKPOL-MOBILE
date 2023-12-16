import 'package:flutter/material.dart';

class KarakterPage extends StatelessWidget {
  const KarakterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Karakter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}