import 'package:get/get.dart';

import '../controllers/berandarekomendasi_controller.dart';

class BerandarekomendasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BerandarekomendasiController>(
      () => BerandarekomendasiController(),
    );
  }
}
