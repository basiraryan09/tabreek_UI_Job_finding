import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors/colors.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPress, required this.name,
  });

  final VoidCallback? onPress;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: appButtonColor,
            foregroundColor: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        onPressed: onPress,
        child:  Text(name),
      ),
    );
  }
}