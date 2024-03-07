import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasbih/Controller/tasbih_controller.dart';
import 'package:tasbih/Core/constants/colors.dart';
import 'package:tasbih/Core/constants/tasbih_icons_list.dart';

class CustumListIcons extends StatelessWidget {
  const CustumListIcons({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<TasbihController>();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            tasbihIconsName.length,
            (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetBuilder(
                      builder: (TasbihController controller) => CustumIcon(
                        index: index,
                        onTap: () =>  controller.onTapIconsdown(index),
                        iconImage: tasbihIconsName[index]["icon_image"],
                        isTrue: index == 1
                            ? controller.isVolume
                            : index == 2
                                ? controller.isVibrate
                                : index == 3 && controller.counter == 0
                                    ? false
                                    : null,
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}

class CustumIcon extends StatelessWidget {
  const CustumIcon(
      {super.key,
      required this.onTap,
      required this.iconImage,
      required this.index,
      this.isTrue});
  final void Function()? onTap;
  final String iconImage;
  final int index;
  final bool? isTrue;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap?.call(),
      child: Container(
        height: 42.h,
        width: 42.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.sp),
            boxShadow: [BoxShadow(color: Mycolor.bottonBorder, blurRadius: 5)],
            color: isTrue != null && isTrue == false
                ? Mycolor.dialogcolor.withOpacity(0.7)
                : Mycolor.dialogcolor),
        child: Padding(
          padding: EdgeInsets.all(index != 3 ? 10.sp : 0),
          child: index != 3
              ? Image.asset(iconImage)
              : Center(
                  child: Text(
                    iconImage,
                    style: TextStyle(
                        color: Mycolor.bottonBorder,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
        ),
      ),
    );
  }
}
