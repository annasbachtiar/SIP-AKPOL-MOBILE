import 'package:flutter/material.dart';

//========== WIDGET APPBAR ==========//
class HAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF16192C),
      toolbarHeight: 60,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo-akpol.png')
              )
            ),
            height: 40,
            width: 40,
          ),
          const SizedBox(width: 8),
          const Text(
            'SIP\nAKPOL', 
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold, 
              height: 0.9
            )
          )
        ],
      ),
    );
  }
}