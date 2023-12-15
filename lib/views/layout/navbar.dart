import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sip_akpol/controllers/navbar_controller.dart';

class NavbarMenu extends StatelessWidget {
  const NavbarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavbarController());

    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color(0xFF16192C),
          indicatorColor: Colors.amber,
          iconTheme: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const IconThemeData(color: Color(0xFF16192C));
            }
            return const IconThemeData(color: Colors.white);
          }),
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(color: Colors.amber);
            }
            return const TextStyle(color: Colors.white);
          }),
        ),
        child: Obx(
          () => NavigationBar(
              
              elevation: 1,
              animationDuration: const Duration(milliseconds: 1000),
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Beranda'),
                NavigationDestination(icon: Icon(Icons.camera), label: 'Rekam'),
                NavigationDestination(icon: Icon(Icons.notifications), label: 'Notifikasi'),
                NavigationDestination(icon: Icon(Icons.settings), label: 'Pengaturan'),
              ],
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,
            )
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value])
    );
  }
}
