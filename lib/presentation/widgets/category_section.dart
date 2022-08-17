import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zerobalance_assignment/application/home_screen/home_sceen_provider.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key, required this.homeState}) : super(key: key);
  final HomeSceenProvider homeState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category",
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
        Row(
          children: List.generate(
            homeState.categories.length,
            (index) {
              final category = homeState.categories[index];
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    children: [
                      Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: primaryGrey,
                            width: 0.5.w,
                          ),
                          image: DecorationImage(
                            image: AssetImage(category.icon),
                            scale: 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        category.title,
                        style: subTitleStyle.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
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
