import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/images/images_consts.dart';

class ExperianceCard extends StatelessWidget {
  const ExperianceCard({
    super.key,
    required this.stepperData,
  });

  final List<StepperData> stepperData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Work Experience',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20.h,
            ),
            /// --Project Manager Text
            Row(
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset(
                    appLogoIcon,
                    width: 30.w,
                    height: 30.h,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Project Manager"),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text(
                      "Full-time • 10 months",
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w200),
                    ),
                  ],
                )
              ],
            ),
            /// --Stepper
            AnotherStepper(
              stepperList: stepperData,
              stepperDirection: Axis.vertical,
              inverted: false,
              verticalGap: 30,
              barThickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}