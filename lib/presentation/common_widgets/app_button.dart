import 'package:clinic_app/core/colors/app_colors.dart';
import 'package:clinic_app/core/fonts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 54.h,
        width: 296.w,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                )),
            onPressed: onPressed,
            child: Text(
              title,
              style: AppFonts.s18w600.copyWith(
                color: AppColors.white,
              ),
            )),
      ),
    );
  }
}
