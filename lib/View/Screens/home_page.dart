import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasbih/Controller/home_controller.dart';
import 'package:tasbih/View/Widgets/Shared/app_bar.dart';
import 'package:tasbih/View/Widgets/Shared/botton.dart';
import 'package:tasbih/View/Widgets/Home/drawer.dart';

import '../Widgets/Home/containers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      drawer: drawer(),
      body: SafeArea(
        child: Scaffold(
          body: Column(children: [
            const CustumAppBar(
              isTasbihPage: false,
              iconImage1: "assets/Icons/list.png",
              iconImage2: "assets/Icons/share.png",
              text: "Tasbih",
              onTap1: null,
              onTap2: null,
            ),
            SizedBox(height: 10.h),
            CustumButton(
              text: "Get\nStarted",
              isTasbihPage: false,
              ontap1: () => controller.onTapButton(),
            ),
            // SizedBox(height: 30.h),
            const Spacer(),
            Container(margin: EdgeInsets.only(bottom: 25.h), child: const C()),
          ]),
        ),
      ),
    );
  }
}
