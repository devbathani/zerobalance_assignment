import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zerobalance_assignment/application/home_screen/home_sceen_provider.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';

class BlogsSection extends StatelessWidget {
  const BlogsSection({Key? key, required this.homeState}) : super(key: key);
  final HomeSceenProvider homeState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Blogs",
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              homeState.blogs.length,
              (index) {
                final blogs = homeState.blogs[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Container(
                    height: 330.h,
                    width: 310,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: primaryGrey,
                        width: 0.5.w,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                            ),
                            child: Container(
                              height: 150.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: const Color(0xffEEEEEE),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 300.w,
                            child: Text(
                              blogs.title,
                              style: headingStyle.copyWith(
                                fontSize: 18.sp,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Read Time: ${blogs.readTime}",
                            style: subTitleStyle.copyWith(
                              color: primaryBlue,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                blogs.profile,
                                height: 25.h,
                                width: 25.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                blogs.name,
                                style: titleStyle.copyWith(
                                  fontSize: 11.sp,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                blogs.date,
                                style: titleStyle.copyWith(
                                  fontSize: 11.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
