import 'package:flutter/material.dart';
import 'package:komikfajar_app/app/data/models/list_komik.dart';
import 'package:komikfajar_app/app/modules/beranda/controllers/beranda_controller.dart';
import 'package:komikfajar_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ListRekomendasi extends StatelessWidget {
  ListRekomendasi({
    required this.page,
    Key? key,
    required this.controller,
  }) : super(key: key);

  final BerandaController controller;
  String? page;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ListKomik>(
      future: controller.getKomikrecomend(),
      builder: (context, snapshot2) {
        if (snapshot2.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot2.hasData) {
          return Center(
            child: Text("DATA KOSONG"),
          );
        }
        return ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            Data? listrekom = snapshot2.data?.data?[index];
            return InkWell(
              onTap: () {
                Get.toNamed(page!, arguments: listrekom);
              },
              child: Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180 / 2),
                        color: Colors.amber,
                        image: DecorationImage(
                            image: NetworkImage("${listrekom?.image}"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "${listrekom?.title}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
