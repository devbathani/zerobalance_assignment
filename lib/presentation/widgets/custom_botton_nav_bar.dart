import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: primaryGrey.withOpacity(0.55),
            blurRadius: 25,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 2.h,
            child: SalomonBottomBar(
              selectedItemColor: primaryBlue.withOpacity(0.55),
              unselectedItemColor: primaryGrey,
              currentIndex: 0,
              itemPadding:
                  EdgeInsets.symmetric(horizontal: 23.w, vertical: 8.h),
              items: [
                SalomonBottomBarItem(
                  selectedColor: primaryBlue,
                  icon: const Icon(
                    Icons.home_filled,
                  ),
                  title: Text(
                    "Home",
                    style: subTitleStyle.copyWith(
                      color: primaryBlue,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SalomonBottomBarItem(
                  selectedColor: primaryBlue,
                  icon: const Icon(
                    Icons.credit_card,
                  ),
                  title: Text(
                    "Credit",
                    style: subTitleStyle.copyWith(color: primaryBlue),
                  ),
                ),
                SalomonBottomBarItem(
                  selectedColor: primaryBlue,
                  icon: const Icon(
                    Icons.pie_chart_outline_outlined,
                  ),
                  title: Text(
                    "Chart",
                    style: subTitleStyle.copyWith(color: primaryBlue),
                  ),
                ),
                SalomonBottomBarItem(
                  selectedColor: primaryBlue,
                  icon: const Icon(
                    FontAwesomeIcons.award,
                  ),
                  title: Text(
                    "Award",
                    style: subTitleStyle.copyWith(color: primaryBlue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
