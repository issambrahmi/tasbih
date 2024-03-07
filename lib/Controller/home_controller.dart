import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbih/View/Screens/dikr_page.dart';
import 'package:tasbih/View/Screens/tasbih_page.dart';
import 'package:tasbih/View/Widgets/Home/show_dialog.dart';

class HomeController extends GetxController {
  void ontapContainer(int index, BuildContext context) {
    switch (index) {
      case 0:
        custumDialog(context);
    }
  }

  void onTapButton() {
    Get.to(() => const TasbihPage());
  }

  void ontapDikr(int index) {
    String assets = "assets/Json";
    switch (index) {
      case 0:
        Get.to(() => const AzkarPage(),
            arguments: "$assets/evening_wird.json");
        break;
      case 1:
        Get.to(() => const AzkarPage(),
            arguments: "$assets/morning_wird.json");
        break;
      case 2:
        Get.to(() => const AzkarPage(), arguments: "$assets/dohr_wird.json");
        break;
      case 3:
        Get.to(() => const AzkarPage(), arguments: "$assets/fajr_wird.json");
        break;
      case 4:
        Get.to(() => const AzkarPage(),
            arguments: "$assets/bedtime_wird.json");
        break;
    }
  }
}
