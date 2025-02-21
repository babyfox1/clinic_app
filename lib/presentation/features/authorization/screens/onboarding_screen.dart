import 'package:clinic_app/core/consts/app_consts.dart';
import 'package:clinic_app/core/fonts/app_fonts.dart';
import 'package:clinic_app/presentation/common_widgets/app_button.dart';
import 'package:clinic_app/presentation/features/authorization/screens/login_screen.dart';
import 'package:clinic_app/presentation/features/authorization/widgets/onboarding_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Профиль',
          style: AppFonts.s17w600,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 18.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Зачем нужен профиль?',
              style: AppFonts.s22w500,
            ),
            SizedBox(height: 25.h),
            Column(
                children: OnboardingData.data
                    .map(
                      (e) => OnboardingItemWidget(
                        icon: e.icon,
                        text: e.text,
                      ),
                    )
                    .toList()),
            AppButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool(
                  AppConsts.isFirstEnter,
                  false,
                );
                Navigator.pushReplacement(
                  // ignore: use_build_context_synchronously
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              title: 'Войти',
            ),
          ],
        ),
      ),
    );
  }
}
