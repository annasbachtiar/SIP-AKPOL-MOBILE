import 'package:flutter/material.dart';

class JasmaniPage extends StatelessWidget {
  const JasmaniPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Jasmani',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}