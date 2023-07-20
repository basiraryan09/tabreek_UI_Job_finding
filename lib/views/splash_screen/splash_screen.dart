import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabreek/constants/colors/colors.dart';

import '../../constants/text/text_style_const.dart';
import '../welcome_Screen/welcome_Screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();

    // Delay navigation to the main screen
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appMainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SafeArea(
            child: Center(
              child: Text(
                'Tabreek',
                style: appNameText,
              ),
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
        ],
      ),
    );
  }
}
