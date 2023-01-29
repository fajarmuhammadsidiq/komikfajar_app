import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komikfajar_app/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Komik Kita",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Baca Komik Favoritmu disini",
              style: TextStyle(),
            ),
            SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                  width: 300,
                  height: 300,
                  child: Lottie.asset('assets/img/lottieawal.json')),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Get.toNamed(Routes.BERANDA);
              },
              child: Text(
                "Ayo mulai membaca",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
