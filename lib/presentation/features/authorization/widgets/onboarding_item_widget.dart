import 'package:clinic_app/core/fonts/app_fonts.dart';
import 'package:clinic_app/core/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingItemWidget extends StatelessWidget {
  const OnboardingItemWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final Widget icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30.h,
      ),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 18.w,
          ),
          Flexible(
            child: Text(
              text,
              style: AppFonts.s15w400,
            ),
          )
        ],
      ),
    );
  }
}

class OnboardingItemModel {
  final String text;
  final Widget icon;

  OnboardingItemModel({required this.text, required this.icon});
}

abstract class OnboardingData {
  static List<OnboardingItemModel> data = [
    OnboardingItemModel(
      icon: AppImages.hospital,
      text: 'Записывайтесь на прием к самым лучшим специалистам',
    ),
    OnboardingItemModel(
      icon: AppImages.clipboard,
      text:
          'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собтсвенную библиотеку',
    ),
    OnboardingItemModel(
      icon: AppImages.speech,
      text:
          'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
    ),
    OnboardingItemModel(
      icon: AppImages.bell,
      text: 'Получайте уведомления о приеме или о поступивших сообщениях',
    ),
  ];
}
