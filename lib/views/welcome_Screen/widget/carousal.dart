import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Carousal extends StatelessWidget {
  const Carousal({
    super.key,
    required this.imageList,
    required this.index,
  });

  final List<String> imageList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Image.asset(
        imageList[index],
        height: 229.h,
        width: 229.w,
        //fit: BoxFit.cover,
      ),
    );
  }
}