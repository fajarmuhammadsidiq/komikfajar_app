import 'package:flutter/material.dart';

class ListKomik {
  bool? success;
  List<Data>? data;
  String? message;
  int? code;

  ListKomik({this.success, this.data, this.message, this.code});

  ListKomik.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['code'] = this.code;
    return data;
  }
}

class Data {
  String? title;
  String? image;
  String? endpoint;
  String? desc;
  String? type;

  Data({this.title, this.image, this.endpoint});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    endpoint = json['endpoint'];
    desc = json['desc'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['image'] = this.image;
    data['endpoint'] = this.endpoint;
    data['type'] = this.type;
    return data;
  }
}
