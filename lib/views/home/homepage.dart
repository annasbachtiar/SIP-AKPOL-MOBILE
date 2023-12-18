import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sip_akpol/routes/routes.dart';
import 'package:sip_akpol/controllers/homepage_controller.dart';
import 'package:sip_akpol/views/home/homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final controller = Get.put(HomepageController());

    return Scaffold(
      appBar: const HAppBar(),
      backgroundColor: const Color(0xFFF6F6F6),
      body: Scrollbar(
        thickness: 5,
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== BAGIAN NAMA DAN ICON NOTIFIKASI USER ===== //
              ListTile(
                contentPadding: const EdgeInsets.all(15),
                horizontalTitleGap: 8,
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/exp-avatar.jpg'),
                ),
                title: Obx(() => Text(
                  'Selamat ${controller.waktu.value},', 
                  style: const TextStyle(fontSize: 15)
                  )
                ),
                subtitle: const Text(
                  'Tony Stark',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 20, 
                    height: 0.9
                  )
                ),
                trailing: const Icon(Icons.circle_notifications_outlined, size: 50),
              ),
        
              // ===== BAGIAN KEGIATAN HARIAN ===== //
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: const Text('KEGIATAN HARIAN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                height: 0.3 * heightApp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          children: [
                            itemKegiatanHarian('Apel Rutin', Icons.event_note_outlined, Colors.indigo, Routes.apelRutinPage),
                            itemKegiatanHarian('Petugas Piket', Icons.assignment_ind_outlined, Colors.red, Routes.petugasPiketPage),
                            itemKegiatanHarian('Rawat RS', Icons.vaccines_outlined, Colors.green, Routes.rawatRSPage),
                            itemKegiatanHarian('Izin Berobat', Icons.local_pharmacy_outlined, Colors.amberAccent, Routes.izinBerobatPage),
                            itemKegiatanHarian('Dinas Ringan', Icons.work_outlined, Colors.brown, Routes.dinasRinganPage),
                            itemKegiatanHarian('Reputasi', Icons.local_activity_outlined, Colors.pink, Routes.reputasiPage),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
        
              // ===== BAGIAN AKADEMIK ===== //
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: const Text('AKADEMIK', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ),
              SizedBox(
                // margin: const EdgeInsets.only(left: 15, right: 15),
                height: 0.2 * heightApp,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: GridView(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1
                          ),
                          scrollDirection: Axis.horizontal,
                          children: [
                            itemAkademik('Keterampilan', Icons.engineering, Colors.red, Routes.keterampilanPage),
                            itemAkademik('Karakter', Icons.face, Colors.amber, Routes.karakterPage),
                            itemAkademik('Jasmani', Icons.directions_run, Colors.indigo, Routes.jasmaniPage),
                            itemAkademik('Kesehatan', Icons.monitor_heart, Colors.green, Routes.kesehatanPage),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              
              // ===== BAGIAN DATA ===== //
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: const Text('DATA', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  itemData('Data Taruna', 'Subtitle Text', Icons.person, Colors.redAccent),
                  itemData('Data Taruna', 'Subtitle Text', Icons.person, Colors.greenAccent),
                  itemData('Data Taruna', 'Subtitle Text', Icons.person, Colors.brown),
                ],
              ),
              const SizedBox(height: 20),
              const Center(child: Text('© 2023 AKPOL', style: TextStyle(color: Colors.grey))),
              const SizedBox(height: 5)
            ],
          ),
        ),
      )
    );
  }
}

itemKegiatanHarian(String title, IconData iconData, Color background, String routeName) {
  return GestureDetector(
    onTap: () => Get.toNamed(routeName),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(2,2)
              )
            ]
          ),
          child: Icon(iconData, color: Colors.white)
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    ),
  );
}

itemAkademik(String title, IconData iconData, Color gridColor, String routeName) {
  return GestureDetector(
    onTap: () => Get.toNamed(routeName),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(2,2)
                  )
                ]
              ),
            ),
            SizedBox(
              height: 90,
              width: 120,
              child: Icon(iconData, color: gridColor, size: 70),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: gridColor,
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                ),
                child: Center(child: Text(title, style: const TextStyle(color: Colors.white))),
              ),
            )
          ]
        ),
      ],
    ),
  );
}

itemData(String title, String subtitle, IconData iconData, Color iconColor) {
  return  Container(
    margin: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
    child: ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.grey.withOpacity(0.2))
      ),
      tileColor: Colors.white,
      leading: Icon(iconData, size: 40, color: iconColor),
      horizontalTitleGap: 8,
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: const TextStyle(height: 0.9)),
    ),
  );
}