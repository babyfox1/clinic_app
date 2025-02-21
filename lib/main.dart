import 'package:clinic_app/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/colors/app_colors.dart';

void main() {
  runApp(
    const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'sfPro',
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.white,
              elevation: 0.5.h,
              
              shadowColor: AppColors.black.withValues(alpha: 0.3),
            ),
            scaffoldBackgroundColor: AppColors.white,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
