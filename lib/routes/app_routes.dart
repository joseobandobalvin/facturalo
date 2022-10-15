import 'package:facturalo/controllers/auth_controller.dart';
import 'package:facturalo/controllers/zoom_drawer_controller.dart';
import 'package:facturalo/screens/home/home_screen.dart';
import 'package:facturalo/screens/login/login_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: "/",
          page: () => const HomeScreen(),
          binding: BindingsBuilder(() {
            Get.put(AuthController());
            Get.put(MyZoomDrawerController());
          }),
        ),
        GetPage(
          name: "/login",
          page: () => const LoginScreen(),
          binding: BindingsBuilder(() {
            Get.put(AuthController());
            Get.put(MyZoomDrawerController());
          }),
        ),
      ];
}
