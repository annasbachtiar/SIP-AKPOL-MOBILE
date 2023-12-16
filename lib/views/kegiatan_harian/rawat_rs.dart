import 'package:flutter/material.dart';

class RawatRSPage extends StatelessWidget {
  const RawatRSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Rawat RS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}