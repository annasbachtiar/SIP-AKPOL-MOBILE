import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sip_akpol/routes/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: heightApp * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg-login.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              height: heightApp,
              decoration: BoxDecoration(
                color: const Color(0xC6C6C6C6).withOpacity(0.3)
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 50, bottom: 50, right: 20, left: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0,3)
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo-akpol.png')
                        )
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text('Selamat datang di', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                    const Text('SIP AKPOL', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, letterSpacing: 1, height: 0.9)),
                    const SizedBox(height: 30.0),
                    const Text('Silahkan login terlebih dahulu', style: TextStyle(color: Colors.grey)),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Username atau Email',
                                labelStyle: TextStyle(color: Color(0xFF16192C)),
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF16192C))
                                )
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Color(0xFF16192C)),
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.lock),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF16192C))
                                )
                              ),
                              obscureText: true,
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 56,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.toNamed(Routes.navigationBar);
                                }, 
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  foregroundColor: Colors.white,
                                  backgroundColor: const Color(0xFF16192C)
                                  // backgroundColor: Colors.black
                                ),
                                child: const Text('LOGIN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const SizedBox(height: 80),
                            const Text('© 2023 AKPOL', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      )
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}