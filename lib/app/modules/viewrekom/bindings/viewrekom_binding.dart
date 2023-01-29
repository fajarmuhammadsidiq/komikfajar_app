import 'package:get/get.dart';

import '../controllers/viewrekom_controller.dart';

class ViewrekomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewrekomController>(
      () => ViewrekomController(),
    );
  }
}
