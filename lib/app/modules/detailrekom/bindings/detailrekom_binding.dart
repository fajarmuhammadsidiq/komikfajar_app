import 'package:get/get.dart';

import '../controllers/detailrekom_controller.dart';

class DetailrekomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailrekomController>(
      () => DetailrekomController(),
    );
  }
}
