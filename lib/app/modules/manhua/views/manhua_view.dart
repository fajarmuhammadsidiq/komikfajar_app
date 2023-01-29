import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/list_komik.dart';
import '../controllers/manhua_controller.dart';

class ManhuaView extends GetView<ManhuaController> {
  Data? judul = Get.arguments;
  @override
  Widget build(BuildContext context) {
    print(judul?.desc);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Detail Komik',
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 200,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        "${judul?.image}",
                      ),
                      fit: BoxFit.cover)),
            ),
            Text(
              "${judul?.title}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              alignment: Alignment.center,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Sinopsis",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${judul?.desc != null ? judul?.desc : "Sinopsis tidak tersedia"}',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: Colors.black),
                    onPressed: () {},
                    child: Text("Baca dari awal")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () {},
                    child: Text("Terakhir di baca ")),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("List Chapter"),
            ),
            Divider(
              color: Colors.black,
              thickness: 5.0,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                title: Text("Chapter ${index + 1}"),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(Icons.download_outlined)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
