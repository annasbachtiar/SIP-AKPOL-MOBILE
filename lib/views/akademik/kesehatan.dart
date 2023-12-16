import 'package:flutter/material.dart';

class KesehatanPage extends StatelessWidget {
  const KesehatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Kesehatan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}