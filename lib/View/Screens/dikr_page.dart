import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbih/Controller/azkar_controller.dart';
import 'package:tasbih/View/Widgets/Shared/app_bar.dart';
import 'package:tasbih/View/Widgets/Wird/wird_list.dart';

class AzkarPage extends StatelessWidget {
  const AzkarPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AzkarController());
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/Icons/masjid2.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
          ),
           ListView(
           shrinkWrap: false,
            children: [
            CustumAppBar(isTasbihPage: true, iconImage1: "assets/Icons/back_left.png", iconImage2: "assets/Icons/morning.png", text: "hi"),
          CustumWirdList(),

          ],),
        ],
      ),
    );
  }
}
