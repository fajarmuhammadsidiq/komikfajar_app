import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komikfajar_app/app/routes/app_pages.dart';

import '../../../data/models/list_komik.dart';
import '../controllers/viewrekom_controller.dart';

class ViewrekomView extends GetView<ViewrekomController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'List Rekomendasi',
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: FutureBuilder<ListKomik>(
          future: controller.getKomikrecomendList(),
          builder: (context, snapshot3) {
            return ListView.builder(
              itemCount: snapshot3.data?.data?.length,
              itemBuilder: (context, index) {
                Data? listrekom = snapshot3.data?.data?[index];
                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.DETAILREKOM, arguments: listrekom);
                  },
                  child: Card(
                    color: Colors.white,
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
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
