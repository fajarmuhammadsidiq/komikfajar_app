import 'dart:convert';

import 'package:get/get.dart';
import 'package:komikfajar_app/app/data/models/list_komik.dart';

import 'package:http/http.dart' as http;

class BerandaController extends GetxController {
  //TODO: Implement BerandaController

  Future<ListKomik> getKomikpopular() async {
    var response = await http
        .get(Uri.parse("https://komiku-api.fly.dev/api/comic/popular/page/1"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    return ListKomik.fromJson(data);
  }

  Future<ListKomik> getKomikrecomend() async {
    var response = await http.get(
        Uri.parse("https://komiku-api.fly.dev/api/comic/recommended/page/1"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    return ListKomik.fromJson(data);
  }

  Future<ListKomik> getlistKomikmanga() async {
    var response = await http.get(
        Uri.parse("https://komiku-api.fly.dev/api/comic/list?filter=manga"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    return ListKomik.fromJson(data);
  }

  Future<ListKomik> getlistKomikmanhwa() async {
    var response = await http.get(
        Uri.parse("https://komiku-api.fly.dev/api/comic/list?filter=manhwa"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    return ListKomik.fromJson(data);
  }

  Future<ListKomik> getlistKomikmanhua() async {
    var response = await http.get(
        Uri.parse("https://komiku-api.fly.dev/api/comic/list?filter=manhua"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    return ListKomik.fromJson(data);
  }
}
