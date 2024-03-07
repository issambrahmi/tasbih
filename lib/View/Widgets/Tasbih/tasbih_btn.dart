import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:tasbih/Controller/tasbih_controller.dart';
import 'package:tasbih/Core/constants/colors.dart';

import '../Shared/botton.dart';

class CustumTasbihBtn extends StatelessWidget {
  const CustumTasbihBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 240.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            child: GetBuilder(
              builder: (TasbihController controller) =>
                  CircularProgressIndicator(
                value: controller.counter / 100,
                strokeWidth: 12,
                color: Mycolor.bottonBorder,
                backgroundColor: Mycolor.dialogcolor,
              ),
            ),
          ),
        ),
        GetBuilder(
          builder: (TasbihController controller) => CustumButton(
            text: "${controller.counter}",
            isTasbihPage: true,
            ontap1: () => controller.onTapButton(),
          ),
        )
      ],
    );
  }
}
