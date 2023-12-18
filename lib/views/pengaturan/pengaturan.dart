import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sip_akpol/routes/routes.dart';

class PengaturanPage extends StatelessWidget {
  const PengaturanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF6F6F6),
        centerTitle: true,
        title: const Text(
          'Pengaturan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Akun', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey)),
                  itemData('Edit Profil', Icons.badge, const Color(0xFF16192C), Routes.editProfilPage),
                  const Divider(thickness: 1),
                  itemData('Ganti Password', Icons.key, const Color(0xFF16192C), Routes.gantiPasswordPage),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  itemData('Logout', Icons.logout, Colors.redAccent, Routes.loginPage),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('© 2023 AKPOL', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 5)
        ],
      ),
    );
  }
}

itemData(String title, IconData iconData, Color iconColor, String routeName) {
  return  Padding(
    padding: EdgeInsets.zero,
    child: ListTile(
      onTap: () => Get.toNamed(routeName),
      contentPadding: const EdgeInsets.only(left: 0, right: 5),
      leading: Icon(iconData, size: 40, color: iconColor),
      horizontalTitleGap: 15,
      title: Text(title, style: const TextStyle(fontSize: 20)),
    ),
  );
}