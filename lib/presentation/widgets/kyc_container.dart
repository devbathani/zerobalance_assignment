import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:zerobalance_assignment/application/home_screen/home_sceen_provider.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';
import 'package:zerobalance_assignment/gen/assets.gen.dart';
import 'package:zerobalance_assignment/presentation/widgets/bottom_sheet.dart';
import 'package:zerobalance_assignment/presentation/widgets/dashed_line.dart';

class KYCContainer extends StatelessWidget {
  const KYCContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeSceenProvider>(
      builder: (context, homeState, _) {
        return Container(
          height: 500.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: primaryBlue,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Spends",
                        style: whitetitleStyle.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "₹0",
                        style: whiteHeadingStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Text(
                        "₹18,000",
                        style: whitetitleStyle.copyWith(
                          fontSize: 11.sp,
                          color: primaryPurple,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      const DashLines(),
                      const Spacer(),
                      Text(
                        "budget",
                        style: whitetitleStyle.copyWith(
                          fontSize: 11.sp,
                          color: primaryPurple,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 150.h,
                  width: MediaQuery.of(context).size.width,
                  child: LineChart(
                    LineChartData(
                      minX: 0,
                      maxX: 11,
                      minY: 0,
                      maxY: 6,
                      titlesData: FlTitlesData(show: false),
                      gridData: FlGridData(
                        show: false,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: const Color(0xff37434d),
                            strokeWidth: 1,
                          );
                        },
                        drawVerticalLine: true,
                        getDrawingVerticalLine: (value) {
                          return FlLine(
                            color: const Color(0xff37434d),
                            strokeWidth: 1,
                          );
                        },
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 0),
                            const FlSpot(2, 1),
                            const FlSpot(3, 2),
                            const FlSpot(5, 4),
                            const FlSpot(7, 2),
                            const FlSpot(8, 6.5),
                            const FlSpot(9, 5),
                          ],
                          isCurved: true,
                          color: Colors.white,
                          barWidth: 3,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: homeState.gradientColors,
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Jan month's data",
                      style: whitetitleStyle.copyWith(
                        fontSize: 11.sp,
                        color: primaryPurple,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 90.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 5.w),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        Assets.images.projectSavingIcon.path,
                                        height: 25.h,
                                        width: 25.w,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        "Projected Saving",
                                        style: subTitleStyle.copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "₹2,000",
                                    style: whiteHeadingStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 90.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 5.w),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        Assets.images.highestSpentIcon.path,
                                        height: 25.h,
                                        width: 25.w,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        "Highest Spent",
                                        style: subTitleStyle.copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "₹2,000",
                                    style: whiteHeadingStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 190.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Card balance",
                                style: subTitleStyle.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "₹1,500",
                                    style: whiteHeadingStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 50.w,
                                    decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(0.30),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Low bal",
                                        style: subTitleStyle.copyWith(
                                          color: Colors.red,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const BottomSheetContainer();
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 75.h,
                                      width: 75.w,
                                      decoration: BoxDecoration(
                                        color: primaryBlue,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Add",
                                          style: whiteHeadingStyle.copyWith(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
