import 'package:clinic_app/core/consts/app_consts.dart';
import 'package:clinic_app/presentation/features/authorization/screens/login_screen.dart';
import 'package:clinic_app/presentation/features/authorization/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void routing() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isFirstEnter = prefs.getBool(AppConsts.isFirstEnter) ?? true;

    if (isFirstEnter) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    }
  }

  @override
  void initState() {
    routing();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: const CircularProgressIndicator.adaptive());
  }
}
