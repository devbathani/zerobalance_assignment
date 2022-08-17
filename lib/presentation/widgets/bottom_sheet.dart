import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:zerobalance_assignment/application/bottom_sheet/bottom_sheet_provider.dart';
import 'package:zerobalance_assignment/commons/colors.dart';
import 'package:zerobalance_assignment/commons/text_styles.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomSheetProvider>(
      builder: (context, bottomSheetState, _) {
        return Container(
          height: 600.h,
          width: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Adding Transaction",
                      style: headingStyle.copyWith(
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Enter Spend amount",
                  style: headingStyle.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "Enter the amount that you have spend without using zero balance.",
                    style: subTitleStyle.copyWith(
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                  style: titleStyle.copyWith(
                    fontSize: 12.sp,
                    color: primaryBlue,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryBlue,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                    ),
                    floatingLabelStyle: titleStyle.copyWith(
                      fontSize: 13.sp,
                      color: primaryBlue,
                    ),
                    labelText: 'Amount',
                    labelStyle: titleStyle.copyWith(
                      fontSize: 13.sp,
                      color: primaryBlue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Enter Date",
                  style: headingStyle.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  style: titleStyle.copyWith(
                    fontSize: 12.sp,
                    color: primaryBlue,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryGrey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Mode of payment",
                  style: headingStyle.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: List.generate(
                    bottomSheetState.modeOfPayment.length,
                    (index) {
                      final containerState =
                          bottomSheetState.modeOfPayment[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: InkWell(
                          onTap: () {
                            bottomSheetState.changeButton(index);
                          },
                          child: Container(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color:
                                  containerState ? primaryBlue : Colors.white,
                              borderRadius: BorderRadius.circular(15.r),
                              border: Border.all(
                                color: containerState
                                    ? Colors.transparent
                                    : primaryBlue,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                index == 0
                                    ? "UPI"
                                    : index == 1
                                        ? "Card"
                                        : "Cash",
                                style: subTitleStyle.copyWith(
                                  color: containerState
                                      ? Colors.white
                                      : primaryBlue,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Quick Note",
                  style: headingStyle.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  style: titleStyle.copyWith(
                    fontSize: 12.sp,
                    color: primaryBlue,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryGrey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                    ),
                    hintText: "Quick Note",
                    hintStyle: subTitleStyle.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: primaryBlue,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Center(
                    child: Text(
                      "Save",
                      style: whitetitleStyle.copyWith(fontSize: 15.sp),
                    ),
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
