import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';
import 'package:zerobalance_assignment/gen/assets.gen.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.images.profile.path,
          height: 32.h,
          width: 32.w,
        ),
        SizedBox(
          width: 15.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back,",
              style: subTitleStyle.copyWith(
                fontSize: 10.sp,
              ),
            ),
            Text(
              "Dev Bathani",
              style: titleStyle,
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          Assets.icons.homeScreenTopRightIcon.path,
          height: 20.h,
          width: 20.w,
        ),
      ],
    );
  }
}
