import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/Controller/home_controller.dart';
import 'package:tasbih/Core/constants/colors.dart';
import 'package:tasbih/Core/constants/containers_list.dart';

void custumDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 75.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                boxShadow: const [BoxShadow(color: Colors.black)]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Icons/pray.png",
                  height: 100.h,
                ),
                SizedBox(height: 15.h),
                Text(
                  "Daily Wird",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Mycolor.bottonBorder),
                ),
                SizedBox(height: 15.h),
                Wrap(
                  direction: Axis.horizontal,
                  children: List.generate(
                      dialogContainer.length,
                      (index) => CustumContainer(
                            text: dialogContainer[index]["text"],
                            imagePath: dialogContainer[index]["image"],
                            index: index,
                          )),
                ),
              ],
            ),
          ));
}

class CustumContainer extends StatelessWidget {
  const CustumContainer(
      {super.key,
      required this.text,
      required this.imagePath,
      required this.index});
  final String text;
  final String imagePath;
  final int index;
  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();
    return Card(
      shadowColor: Colors.transparent,
      color: Colors.transparent,
      child: InkWell(
        onTap: () => controller.ontapDikr(index),
        child: Container(
          width: index != 4
              ? MediaQuery.of(context).size.width / 2 - 38.w
              : double.infinity,
          height: 100.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Mycolor.bottonBorder, blurRadius: 5)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150.sp),
                ),
                child: Image.asset(imagePath),
              ),
              SizedBox(height: 5.h),
              Text(text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Mycolor.text1)),
            ],
          ),
        ),
      ),
    );
  }
}
