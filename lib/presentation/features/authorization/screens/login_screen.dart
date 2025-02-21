import 'package:clinic_app/core/colors/app_colors.dart';
import 'package:clinic_app/core/fonts/app_fonts.dart';
import 'package:clinic_app/presentation/common_widgets/app_button.dart';
import 'package:clinic_app/presentation/features/authorization/widgets/exit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ExitButton(),
        centerTitle: true,
        title: Text(
          'Вход',
          style: AppFonts.s17w600,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 15.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Войти',
              style: AppFonts.s34w800,
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 11.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Номер телефона',
                    style: AppFonts.s15w400,
                  ),
                  TextField(
                    style: AppFonts.s17w700,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 1),
                      prefix: Text(
                        '+7 ',
                        style:
                            AppFonts.s17w700.copyWith(color: AppColors.black3),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.w,
                          color: AppColors.black3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.5.h,
                  ),
                  Text(
                    'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
                    style: AppFonts.s15w400,
                  ),
                  AppButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Lf',
                            ),
                          ),
                        );
                      },
                      title: 'Далее')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
