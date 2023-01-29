import 'package:get/get.dart';

import '../controllers/berandapopuler_controller.dart';

class BerandapopulerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BerandapopulerController>(
      () => BerandapopulerController(),
    );
  }
}
