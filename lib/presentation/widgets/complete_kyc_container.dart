import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';
import 'package:zerobalance_assignment/gen/assets.gen.dart';
import 'package:zerobalance_assignment/presentation/home_screen/home_screen_with_kyc.dart';
import 'package:zerobalance_assignment/presentation/widgets/dashed_line.dart';

class CompleteKYCContainer extends StatelessWidget {
  const CompleteKYCContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.h,
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
              height: 130.h,
            ),
            Container(
              height: 3.h,
              width: 20.w,
              color: Colors.white,
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
                      fontSize: 11.sp, color: primaryPurple),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Stack(
                children: [
                  Container(
                    height: 130.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pending KYC",
                            style: headingStyle,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          SizedBox(
                            width: 200.w,
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printng and typesetting industry. Lorem ",
                              style: subTitleStyle.copyWith(
                                fontSize: 10.sp,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const HomeScreenKYC(),
                                ),
                              );
                            },
                            child: Container(
                              height: 30.h,
                              width: 130.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Complete Now",
                                  style: whitetitleStyle.copyWith(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.h,
                    right: 0.w,
                    child: Image.asset(
                      Assets.images.pendingKycEllipse.path,
                      height: 90.h,
                      width: 90.w,
                    ),
                  ),
                  Positioned(
                    top: 15.h,
                    right: 15.w,
                    child: Text(
                      "🔑",
                      style: GoogleFonts.poppins(
                        fontSize: 35.sp,
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
  }
}
