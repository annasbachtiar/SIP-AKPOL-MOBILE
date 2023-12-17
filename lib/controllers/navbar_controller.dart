import 'package:get/get.dart';
import 'package:sip_akpol/views/home/homepage.dart';
import 'package:sip_akpol/views/notifikasi.dart';
import 'package:sip_akpol/views/pengaturan.dart';
import 'package:sip_akpol/views/rekam/rekam.dart';

class NavbarController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomePage(), 
    const RekamPage(), 
    const NotifikasiPage(),
    const PengaturanPage(),
  ];
}