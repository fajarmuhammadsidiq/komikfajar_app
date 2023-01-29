import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/list_komik.dart';

class BannerAtas extends StatelessWidget {
  BannerAtas({
    required this.snapshot,
    required this.page,
    Key? key,
  }) : super(key: key);

  List<Data>? snapshot;
  String? page;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          var snapshot1 = snapshot;
          List<Data>? datadewe = snapshot1;
          int random = Random().nextInt(datadewe!.length);
          return Column(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Get.toNamed(page!, arguments: datadewe[random]);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: Get.width,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          "${datadewe[random].image}",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "${datadewe[random].title}",
                style: TextStyle(color: Colors.white),
              )
            ],
          );
        });
  }
}
