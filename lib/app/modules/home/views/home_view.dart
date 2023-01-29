import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:komikfajar_app/app/data/models/list_komik.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Semua komik '),
          centerTitle: true,
        ),
        body: FutureBuilder<ListKomik>(
          future: controller.getlistKomik(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              print(snapshot.data?.data?.length);
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return Center(
                child: Text("data kosong "),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data?.data?.length,
              itemBuilder: (context, index) {
                Data judul = snapshot.data!.data![index];
                return Card(
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("${judul.image}"))),
                      ),
                      Expanded(child: Text("${judul.title}"))
                    ],
                  ),
                );
              },
            );
          },
        ));
  }
}
