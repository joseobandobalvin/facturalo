import 'package:facturalo/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MyZoomDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  @override
  void onReady() {
    super.onReady();
  }

  void toogleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }

  void website() {
    debugPrint("website pressed");
    _launch("https://pub.dev/packages?q=launch+url");
  }

  void signIn() {
    Get.find<AuthController>().signIn();
  }

  void signOut() {
    Get.find<AuthController>().signOut();
  }

  void email() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'joseobandobalvin@gmail.com',
      queryParameters: {'subject': 'Default Subject', 'body': 'Default body'},
    );
    _launch(emailLaunchUri.toString());
  }

  Future<void> _launch(String url) async {
    if (!await launch(url)) {
      throw "could noto launch $url";
    }
  }
}
