import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/Core/constants/colors.dart';

class CustumButton extends StatelessWidget {
  const CustumButton({
    super.key,
    required this.isTasbihPage,
    this.ontap1,
    required this.text,
  });
  final bool isTasbihPage;
  final void Function()? ontap1;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          left: isTasbihPage ? 35 : 50.w,
          right: isTasbihPage ? 35 : 50.w,
          top: 5.h,
        ),
        child: InkWell(
          onTap: () => ontap1?.call(),
          customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(130.sp)),
          child: Container(
            height: isTasbihPage ? 230.h : 250.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(115.sp),
                border: Border.all(width: 5, color: Mycolor.bottonBorder),
                color: isTasbihPage ? Mycolor.dialogcolor : Colors.white,
                boxShadow: isTasbihPage
                    ? null
                    : [BoxShadow(color: Mycolor.bottonBorder, blurRadius: 20)]),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Mycolor.text1,
                    fontSize: isTasbihPage ? 35 : 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}