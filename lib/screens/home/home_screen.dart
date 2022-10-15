import 'package:facturalo/configs/themes/app_colors.dart';
import 'package:facturalo/configs/themes/custom_text_styles.dart';
import 'package:facturalo/configs/themes/ui_parameters.dart';
import 'package:facturalo/controllers/zoom_drawer_controller.dart';
import 'package:facturalo/models/user.dart';
import 'package:facturalo/providers/local/auth_client.dart';
import 'package:facturalo/screens/home/menu_screen.dart';
import 'package:facturalo/widgets/app_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<MyZoomDrawerController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MyZoomDrawerController>(
        builder: (_) {
          return ZoomDrawer(
            angle: 0.0,
            borderRadius: 40.0,
            style: DrawerStyle.defaultStyle,
            slideWidth: MediaQuery.of(context).size.width * 0.8,
            showShadow: true,
            controller: _.zoomDrawerController,
            menuBackgroundColor: Colors.white.withOpacity(0.5),
            menuScreenWidth: double.maxFinite,
            menuScreen: MenuScreen(),
            mainScreen: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: mainGradient(),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(mobileScreenPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppCircleButton(
                            onTap: controller.toogleDrawer,
                            child: const Icon(Icons.menu),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Pagina Home inicio sesion",
                            style: headerText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
