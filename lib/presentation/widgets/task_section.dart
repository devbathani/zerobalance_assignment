import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerobalance_assignment/application/home_screen/home_sceen_provider.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';

class TaskSection extends StatelessWidget {
  const TaskSection({Key? key, required this.homeState}) : super(key: key);
  final HomeSceenProvider homeState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Task",
              style: subTitleStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: homeState.tasks.length,
            itemBuilder: (context, index) {
              final task = homeState.tasks[index];
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Container(
                          height: 150.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: primaryGrey,
                              width: 0.5.w,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      task.sNo,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        color: task.sNo == "01"
                                            ? const Color(0xffF6EDD2)
                                            : const Color(0xffFBE8D8),
                                        fontSize: 35.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Text(
                                  task.title,
                                  style: headingStyle.copyWith(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: Text(
                                    task.subTitle,
                                    style: subTitleStyle.copyWith(
                                      fontSize: 10.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 75.h,
                          left: 1.w,
                          child: Image.asset(
                            task.ellipse,
                            height: 80.h,
                            width: 80.w,
                          ),
                        ),
                        Positioned(
                          top: 15.h,
                          left: 15.w,
                          child: Text(
                            task.icon,
                            style: GoogleFonts.poppins(
                              fontSize: 30.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
