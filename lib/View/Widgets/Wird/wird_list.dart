import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasbih/Controller/azkar_controller.dart';
import 'package:tasbih/Core/constants/colors.dart';

class CustumWirdList extends StatelessWidget {
  const CustumWirdList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        builder: (AzkarController controller) => controller.azkar.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.azkar.length,
                itemBuilder: (context, index) => AzkarCard(
                      index: index,
                      onTap: () {},
                    )));
  }
}

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key, required this.index, this.onTap});
  final int index;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    AzkarController controller = Get.find<AzkarController>();
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.0.sp),
        margin: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Mycolor.dialogcolor.withOpacity(0.8)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "${controller.azkar[index].id + 1}#",
                style:
                    TextStyle(fontSize: 10.0.sp, color: Mycolor.bottonBorder),
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        controller.azkar[index].azkar,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                            color: Mycolor.bottonBorder),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "${controller.azkar[index].count} : التكرار",
                          style: TextStyle(
                              fontSize: 14.sp, color: Mycolor.bottonBorder),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20.w),
                Container(
                  height: 50.h,
                  width: 50.w,
                  padding: EdgeInsets.all(5.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Mycolor.dialogcolor,
                      boxShadow: [
                        BoxShadow(
                            color: Mycolor.bottonBorder,
                            offset: const Offset(0, 2))
                      ]),
                  child: Image.asset(
                    "assets/Icons/tasbih_page.png",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
