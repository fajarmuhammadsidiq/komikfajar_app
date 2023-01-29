import 'package:get/get.dart';

import '../controllers/manhwa_controller.dart';

class ManhwaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManhwaController>(
      () => ManhwaController(),
    );
  }
}
