import 'package:flutter/material.dart';

class RekamPujianPage extends StatelessWidget {
  const RekamPujianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF6F6F6),
        centerTitle: true,
        title: const Text(
          'Rekam Pujian',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  ),
                  child: const Center(
                    child: Text('Masukkan Gambar'),
                  ),
                ),
        
                //===== FORM INPUT FIELD =====//
                const SizedBox(height: 20),
                const Text('Batalyon', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFEEEEEE),
                    hintText: 'Pilih Batalyon',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      borderSide: BorderSide.none, // Remove the underline
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Nama Taruna', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFEEEEEE),
                    hintText: 'Pilih Taruna',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      borderSide: BorderSide.none, // Remove the underline
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Jenis Pujian', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFEEEEEE),
                    hintText: 'Pilih Jenis Pujian',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      borderSide: BorderSide.none, // Remove the underline
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Petugas', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFEEEEEE),
                    hintText: 'Tony Stark',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      borderSide: BorderSide.none, // Remove the underline
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF16192C)
                    ),
                    child: const Text('SUBMIT', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}