import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasbih/Controller/home_controller.dart';
import 'package:tasbih/Core/constants/colors.dart';
import 'package:tasbih/Core/constants/containers_list.dart';

class C extends StatelessWidget {
  const C({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Wrap(
        direction: Axis.horizontal,
        runSpacing: 10,
        spacing: 0,
        children: List.generate(
            homeContainers.length,
            (index) => Ccontainer(
                  text1: homeContainers[index]["text_1"],
                  text2: homeContainers[index]["text_2"],
                  icon: homeContainers[index]["icon_image"],
                  index: index,
                )),
      ),
    );
  }
}

class Ccontainer extends StatelessWidget {
  const Ccontainer({
    super.key,
    required this.text1,
    required this.text2,
    required this.icon,
    required this.index,
  });
  final String text1;
  final String text2;
  final String icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();
    return InkWell(
      onTap: () => controller.ontapContainer(index, context),
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.sp)),
      child: Container(
        height: 120.h,
        width: MediaQuery.of(context).size.width / 2 - 15.w,
        margin: index.isEven ? EdgeInsets.only(right: 10.w) : null,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.sp),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Mycolor.bottonBorder, blurRadius: 5)]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.sp),
                  border: Border.all(width: 1, color: Mycolor.bottonBorder)),
              child: Container(
                  padding: EdgeInsets.all(5.sp), child: Image.asset(icon)),
            ),
            SizedBox(height: 10.h),
            Text(text1,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Mycolor.text1)),
            SizedBox(height: 10.h),
            Align(
                alignment: Alignment.center,
                child: Text(
                  text2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Mycolor.text2, fontSize: 11.sp),
                )),
          ],
        ),
      ),
    );
  }
}
