import 'package:flutter/material.dart';

class RekamPage extends StatelessWidget {
  const RekamPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF6F6F6),
        centerTitle: true,
        title: const Text(
          'Rekam',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.7 * heightApp,
              width: 0.9 * widthApp,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  itemRekam('Rekam Pujian', Icons.thumb_up_alt, Colors.indigoAccent),
                  const SizedBox(height: 30),
                  itemRekam('Rekam Pelanggaran', Icons.thumb_down_alt, Colors.redAccent)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

itemRekam(String title, IconData iconData, Color gridColor) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: [
        Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(2,2)
                    )
                  ]
                ),
              ),
              SizedBox(
                height: 160,
                width: 200,
                child: Icon(iconData, color: gridColor, size: 100),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: gridColor,
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                  ),
                  child: Center(
                    child: Text(
                      title, 
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      )
                    )
                  ),
                ),
              ),
            ]
          ),
      ],
    ),
  );
}