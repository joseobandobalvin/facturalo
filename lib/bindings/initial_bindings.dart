import 'package:facturalo/controllers/theme_controller.dart';
import 'package:facturalo/models/user.dart';

import 'package:get/get.dart';

//another

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
  }
}
