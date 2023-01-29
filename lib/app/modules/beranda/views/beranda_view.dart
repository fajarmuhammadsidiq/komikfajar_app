import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:komikfajar_app/app/data/widgets/BERANDA/Banner.dart';
import 'package:komikfajar_app/app/data/widgets/BERANDA/list_rekom.dart';
import 'package:komikfajar_app/app/data/widgets/BERANDA/mangalist.dart';
import 'package:komikfajar_app/app/data/widgets/BERANDA/manhualist.dart';
import 'package:komikfajar_app/app/data/widgets/BERANDA/manhwalist.dart';
import 'package:komikfajar_app/app/data/widgets/kotakkategori.dart';
import 'package:komikfajar_app/app/routes/app_pages.dart';
import '../../../data/models/list_komik.dart';
import '../controllers/beranda_controller.dart';
import 'dart:math';

class BerandaView extends GetView<BerandaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Komik Kita',
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: FutureBuilder<ListKomik>(
            future: controller.getKomikpopular(),
            builder: (context, snapshot1) {
              if (snapshot1.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot1.hasData) {
                return Center(
                  child: Text("DATA KOSONG"),
                );
              }
              return Expanded(
                child: Column(children: [
                  Container(
                    width: Get.width,
                    height: 480,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Populer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 205,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: BannerAtas(
                            snapshot: snapshot1.data!.data,
                            page: Routes.BERANDAPOPULER,
                          ),
                        ),
                        Text("Rekomendasi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Expanded(
                          child: Container(
                              height: 180,
                              width: Get.width,
                              color: Colors.white,
                              child: ListRekomendasi(
                                controller: controller,
                                page: Routes.DETAILREKOM,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {
                                Get.toNamed(Routes.VIEWREKOM);
                              },
                              child: Text(
                                textAlign: TextAlign.end,
                                "lihat lainnya",
                              )),
                        )
                      ],
                    ),
                  ),
                  TabBar(
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    labelColor: Colors.black,
                    tabs: [
                      Tab(text: "Manga"),
                      Tab(text: "Manhwa"),
                      Tab(text: "Manhua"),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      Mangalist(page: Routes.MANGA, controller: controller),
                      Manhwalist(page: Routes.MANHWA, controller: controller),
                      Manhualist(page: Routes.MANHUA, controller: controller)
                    ],
                  ))
                ]),
              );
            },
          ),
        ),
      ),
    );
  }
}
