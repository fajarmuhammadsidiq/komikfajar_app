import 'package:get/get.dart';

import '../controllers/manhua_controller.dart';

class ManhuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManhuaController>(
      () => ManhuaController(),
    );
  }
}
