import 'dart:io';

import 'package:clinic_app/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Вы точно хотите выйти?'),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: AppColors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    exit(0);
                  },
                  icon: const Icon(
                    Icons.check,
                    color: AppColors.green,
                  ),
                )
              ],
            ),
          );
        },
        icon: Icon(
          Icons.close,
          color: AppColors.black.withValues(alpha: 0.54),
        ));
  }
}
