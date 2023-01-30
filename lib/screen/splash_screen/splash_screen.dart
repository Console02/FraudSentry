import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/auth/main_page.dart';
import 'package:fraudsentry/screen/on_boarding/on_boarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 5), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool? hasViewOnboarding = prefs.getBool('hasViewOnBoarding');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => hasViewOnboarding == null
              ? const OnBoardingScreen()
              : const MainPage(),
        ),
      );
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.05,
              1.0,
            ],
            colors: [
              Color(0xFF0DD2DD),
              Color(0xFF014B50),
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/Group 162705.png",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
