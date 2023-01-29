import 'package:flutter/material.dart';

class Rekomendasi extends StatelessWidget {
  Rekomendasi({
    required this.gambar,
    required this.name,
    required this.page,
    Key? key,
  }) : super(key: key);

  String? gambar;
  String? name;
  String? page;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(
                  "$gambar",
                ),
                fit: BoxFit.cover)),
        width: 100,
        height: 100,
      ),
    );
  }
}
