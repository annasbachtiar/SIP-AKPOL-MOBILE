import 'package:get/get.dart';
import 'package:sip_akpol/views/akademik/jasmani.dart';
import 'package:sip_akpol/views/akademik/karakter.dart';
import 'package:sip_akpol/views/akademik/kesehatan.dart';
import 'package:sip_akpol/views/akademik/keterampilan.dart';
import 'package:sip_akpol/views/auth/login.dart';
import 'package:sip_akpol/views/home/homepage.dart';
import 'package:sip_akpol/views/kegiatan_harian/apel_rutin.dart';
import 'package:sip_akpol/views/kegiatan_harian/dinas_ringan.dart';
import 'package:sip_akpol/views/kegiatan_harian/izin_berobat.dart';
import 'package:sip_akpol/views/kegiatan_harian/petugas_piket.dart';
import 'package:sip_akpol/views/kegiatan_harian/rawat_rs.dart';
import 'package:sip_akpol/views/kegiatan_harian/reputasi.dart';
import 'package:sip_akpol/views/layout/navbar.dart';
import 'package:sip_akpol/views/notifikasi.dart';
import 'package:sip_akpol/views/pengaturan.dart';
import 'package:sip_akpol/views/rekam.dart';

//===== Inisialisasi Nama Route =====//
class Routes {
  static String loginPage = '/login';
  static String homePage = '/homepage';
  static String navigationBar = '/navbar';
  static String rekamPage = '/rekam';
  static String notifikasiPage = '/notifikasi';
  static String pengaturanPage = '/pengaturan';

  static String apelRutinPage = '/apel_rutin';
  static String petugasPiketPage = '/petugas_piket';
  static String rawatRSPage = '/rawat_rs';
  static String izinBerobatPage = '/izin_berobat';
  static String dinasRinganPage = '/dinas_ringan';
  static String reputasiPage = '/reputasi';

  static String keterampilanPage = '/keterampilan';
  static String karakterPage = '/karakter';
  static String jasmaniPage = '/jasmani';
  static String kesehatanPage = '/kesehatan';
}

final getPages = [
  //===== Halaman Awal =====//
  GetPage(
    name: Routes.loginPage, 
    page: () => const LoginPage()
  ),
  GetPage(
    name: Routes.navigationBar,
    page: () => const NavbarMenu()
  ),

  //===== Rute Navbar =====//
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

  //===== Rute Kegiatan Harian =====//
  GetPage(
    name: Routes.apelRutinPage,
    page: () => const ApelRutinPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.petugasPiketPage,
    page: () => const PetugasPiketPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.rawatRSPage,
    page: () => const RawatRSPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.izinBerobatPage,
    page: () => const IzinBerobatPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.dinasRinganPage,
    page: () => const DinasRinganPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.reputasiPage,
    page: () => const ReputasiPage(),
    transition: Transition.cupertino
  ),

  //===== Rute Akademik =====//
  GetPage(
    name: Routes.keterampilanPage,
    page: () => const KeterampilanPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.karakterPage,
    page: () => const KarakterPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.jasmaniPage,
    page: () => const JasmaniPage(),
    transition: Transition.cupertino
  ),
  GetPage(
    name: Routes.kesehatanPage,
    page: () => const KesehatanPage(),
    transition: Transition.cupertino
  ),
  
];