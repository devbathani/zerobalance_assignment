import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zerobalance_assignment/application/home_screen/home_sceen_provider.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';

class OffersRewardsSections extends StatelessWidget {
  const OffersRewardsSections({Key? key, required this.homeState})
      : super(key: key);
  final HomeSceenProvider homeState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Offers & Rewards",
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
              homeState.offerRewards.length,
              (index) {
                final offersRewards = homeState.offerRewards[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Container(
                    height: 300.h,
                    width: 310,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(2, 0),
                          blurRadius: 5,
                          spreadRadius: 0.05,
                        ),
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(-2, 5),
                          blurRadius: 5,
                          spreadRadius: 0.05,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: const Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          offersRewards.title,
                          style: headingStyle.copyWith(
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 240.w,
                          child: Center(
                            child: Text(
                              offersRewards.subTitle,
                              style: titleStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: primaryBlue,
                                width: 0.5.w,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Explore rewards",
                                    style: titleStyle.copyWith(
                                      color: primaryBlue,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 20.sp,
                                    color: primaryBlue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
