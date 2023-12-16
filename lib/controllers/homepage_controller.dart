import 'package:get/get.dart';

class HomepageController extends GetxController {
  Rx<String> waktu = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getWaktu();
  }

  void getWaktu() {
    var jam = DateTime.now().hour;

    if (jam > 4 && jam < 12) {
      waktu.value = 'pagi';
    } 
    else if (jam < 15) {
      waktu.value = 'siang';
    } 
    else if (jam < 18) {
      waktu.value = 'sore';
    } 
    else {
      waktu.value = 'malam';
    }
  }
}