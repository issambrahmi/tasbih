import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/Core/constants/colors.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar(
      {super.key,
      required this.isTasbihPage,
      required this.iconImage1,
      required this.iconImage2,
      required this.text,
      this.onTap1,
      this.onTap2});
  final bool isTasbihPage;
  final String iconImage1;
  final String iconImage2;
  final String text;
  final void Function()? onTap1;
  final void Function()? onTap2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => onTap1?.call(),
            child: Container(
              height: isTasbihPage ? 45.h : 45.h,
              width: isTasbihPage ? 45.w : 50.w,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(isTasbihPage ? 40.sp : 15.sp),
                  boxShadow: [
                    BoxShadow(color: Mycolor.bottonBorder, blurRadius: 5)
                  ],
                  color: isTasbihPage
                      ? Mycolor.dialogcolor.withOpacity(1)
                      : Colors.white),
              child: Container(
                padding: EdgeInsets.all(10.sp),
                child: Image.asset(iconImage1),
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
                color: Mycolor.text1),
          ),
          InkWell(
            onTap: () => onTap2?.call(),
            child: Container(
              height: isTasbihPage ? 45.h : 45.h,
              width: isTasbihPage ? 45.w : 50.w,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(isTasbihPage ? 40.sp : 15.sp),
                  boxShadow: [
                    BoxShadow(color: Mycolor.bottonBorder, blurRadius: 5)
                  ],
                  color: isTasbihPage
                      ? Mycolor.dialogcolor.withOpacity(1)
                      : Colors.white),
              child: Container(
                padding: EdgeInsets.all(10.sp),
                child: Image.asset(iconImage2),
              ),
            ),
          )
        ],
      ),
    );
  }
}
