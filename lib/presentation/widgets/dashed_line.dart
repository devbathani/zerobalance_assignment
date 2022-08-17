import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zerobalance_assignment/commons/colors.dart';

class DashLines extends StatelessWidget {
  const DashLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: Axis.horizontal,
      dashColor: primaryPurple,
      dashGapLength: 5.w,
      dashLength: 8.w,
      lineLength: 249.w,
      lineThickness: 1.h,
      dashRadius: 2.r,
    );
  }
}
