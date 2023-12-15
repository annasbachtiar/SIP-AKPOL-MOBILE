import 'package:get/get.dart';
import 'package:sip_akpol/views/auth/login.dart';
import 'package:sip_akpol/views/homepage.dart';
import 'package:sip_akpol/views/layout/navbar.dart';
import 'package:sip_akpol/views/notifikasi.dart';
import 'package:sip_akpol/views/pengaturan.dart';
import 'package:sip_akpol/views/rekam.dart';

class Routes {
  static String loginPage = '/login';
  static String homePage = '/homepage';
  static String navigationBar = '/navbar';
  static String rekamPage = '/rekam';
  static String notifikasiPage = '/notifikasi';
  static String pengaturanPage = '/pengaturan';
}

final getPages = [
  GetPage(
    name: Routes.loginPage, 
    page: () => const LoginPage()
  ),
  GetPage(
    name: Routes.navigationBar,
    page: () => const NavbarMenu()
  ),
  GetPage(
    name: Routes.homePage,
    page: () => const HomePage()
  ),
  GetPage(
    name: Routes.rekamPage,
    page: () => const RekamPage(),
  ),
  GetPage(
    name: Routes.notifikasiPage,
    page: () => const NotifikasiPage(),
  ),
  GetPage(
    name: Routes.pengaturanPage,
    page: () => const PengaturanPage(),
  ),
];