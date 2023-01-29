import 'package:flutter/material.dart';
import 'package:komikfajar_app/app/data/models/list_komik.dart';

import '../../../modules/beranda/controllers/beranda_controller.dart';
import 'package:get/get.dart';

class Mangalist extends StatelessWidget {
  Mangalist({
    Key? key,
    required this.page,
    required this.controller,
  }) : super(key: key);

  final BerandaController controller;
  String? page;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ListKomik>(
      future: controller.getlistKomikmanga(),
      builder: (context, snapshot4) {
        if (snapshot4.connectionState == ConnectionState.waiting) {
          print(snapshot4.data?.data?.length);
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot4.hasData) {
          return Center(
            child: Text("data kosong "),
          );
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot4.data?.data?.length,
          itemBuilder: (context, index) {
            Data? judul = snapshot4.data?.data![index];
            return InkWell(
              onTap: () {
                Get.toNamed(page!, arguments: judul);
              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("${judul?.image}"))),
                    ),
                    Expanded(child: Text("${judul?.title}"))
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
