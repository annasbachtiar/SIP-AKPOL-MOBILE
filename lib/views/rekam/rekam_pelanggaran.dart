import 'package:flutter/material.dart';

class RekamPelanggaranPage extends StatelessWidget {
  const RekamPelanggaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Rekam Pelanggaran',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}