import 'package:flutter/material.dart';

class KeterampilanPage extends StatelessWidget {
  const KeterampilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Keterampilan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}