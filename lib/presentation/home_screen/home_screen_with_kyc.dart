import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:zerobalance_assignment/application/home_screen/home_sceen_provider.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';
import 'package:zerobalance_assignment/presentation/widgets/blogs_section.dart';
import 'package:zerobalance_assignment/presentation/widgets/category_section.dart';
import 'package:zerobalance_assignment/presentation/widgets/custom_botton_nav_bar.dart';
import 'package:zerobalance_assignment/presentation/widgets/home_screen_welcome_text.dart';
import 'package:zerobalance_assignment/presentation/widgets/kyc_container.dart';
import 'package:zerobalance_assignment/presentation/widgets/offers_rewards_sections.dart';
import 'package:zerobalance_assignment/presentation/widgets/task_section.dart';

class HomeScreenKYC extends StatefulWidget {
  const HomeScreenKYC({Key? key}) : super(key: key);

  @override
  State<HomeScreenKYC> createState() => _HomeScreenKYCState();
}

class _HomeScreenKYCState extends State<HomeScreenKYC> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeSceenProvider>(
      builder: (context, homeState, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      const WelcomeText(),
                      SizedBox(
                        height: 5.h,
                      ),
                      Divider(
                        color: primaryGrey,
                        thickness: 0.2.w,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your doing ",
                                style: subTitleStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                "great keep it up. 🫰",
                                style: subTitleStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      const KYCContainer(),
                      SizedBox(
                        height: 30.h,
                      ),
                      CategorySection(homeState: homeState),
                      SizedBox(
                        height: 30.h,
                      ),
                      TaskSection(homeState: homeState),
                      SizedBox(
                        height: 30.h,
                      ),
                      OffersRewardsSections(homeState: homeState),
                      SizedBox(
                        height: 30.h,
                      ),
                      BlogsSection(homeState: homeState),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Container(
                              height: 250.h,
                              width: 5.w,
                              decoration: BoxDecoration(
                                color: primaryGrey,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 280.w,
                            child: Text(
                              "A budget doesn’t limit your freedom; it gives you freedom",
                              style: whiteHeadingStyle.copyWith(
                                color: primaryGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 40.sp,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10.h,
                left: 15.w,
                right: 15.w,
                child: const CustomBottonNavBar(),
              ),
            ],
          ),
        );
      },
    );
  }
}
