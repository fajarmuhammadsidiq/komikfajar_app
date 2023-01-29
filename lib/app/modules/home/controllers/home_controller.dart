//https://komiku-api.fly.dev/api/comic/list

import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:komikfajar_app/app/data/models/list_komik.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  Future<ListKomik> getlistKomik() async {
    var response =
        await http.get(Uri.parse("https://komiku-api.fly.dev/api/comic/list"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    return ListKomik.fromJson(data);
  }
}
