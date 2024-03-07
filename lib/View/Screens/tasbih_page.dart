import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasbih/Controller/tasbih_controller.dart';
import 'package:tasbih/Core/constants/colors.dart';
import 'package:tasbih/View/Widgets/Tasbih/list_icons.dart';
import 'package:tasbih/View/Widgets/Tasbih/tasbih_btn.dart';
import 'package:tasbih/View/Widgets/Shared/app_bar.dart';

class TasbihPage extends StatelessWidget {
  const TasbihPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TasbihController());
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/Icons/masjid2.jpg",
            height: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Mycolor.dialogcolor.withOpacity(0.6)),
            child: Column(
              children: [
                CustumAppBar(
                  isTasbihPage: true,
                  iconImage1: "assets/Icons/back-left.png",
                  iconImage2: "assets/Icons/save1.png",
                  text: "Default Counter",
                  onTap1: () => Get.back(),
                  onTap2: null,
                ),
                SizedBox(height: 20.h),
                const CustumTasbihBtn(),
                const Spacer(),
                Container(
                    margin: EdgeInsets.only(bottom: 40.h),
                    child: const CustumListIcons()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
