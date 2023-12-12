import 'package:get/get.dart';
import 'package:sip_akpol/views/auth/login.dart';
import 'package:sip_akpol/views/layout/homepage.dart';

class Routes {
  static String loginPage = '/login';
  static String homePage = '/homepage';
}

final getPages = [
  GetPage(
    name: Routes.loginPage, 
    page: () => const LoginPage()
  ),
  GetPage(
    name: Routes.homePage,
    page: () => const HomePage()
  ),
];