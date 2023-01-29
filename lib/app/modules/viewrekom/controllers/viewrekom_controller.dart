import 'dart:convert';

import 'package:get/get.dart';
import 'package:komikfajar_app/app/data/models/list_komik.dart';

import 'package:http/http.dart' as http;

class ViewrekomController extends GetxController {
  //TODO: Implement ViewrekomController
  Future<ListKomik> getKomikrecomendList() async {
    var response = await http.get(
        Uri.parse("https://komiku-api.fly.dev/api/comic/recommended/page/1"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    return ListKomik.fromJson(data);
  }
}
