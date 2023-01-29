import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/berandarekomendasi_controller.dart';

class BerandarekomendasiView extends GetView<BerandarekomendasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BerandarekomendasiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BerandarekomendasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
