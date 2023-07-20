import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabreek/constants/colors/colors.dart';
import 'package:tabreek/views/profileScreen/widget/experianceCard.dart';
import 'package:tabreek/views/profileScreen/widget/highlightsCard.dart';
import 'package:tabreek/views/profileScreen/widget/profileCard.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  /// --Stepper List
  List<StepperData> stepperData = [
    StepperData(
        subtitle:
        StepperText('Full-time • 10 months'),
        title: StepperText(
          "Junior Project Manager",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        iconWidget: Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.all(3),
          decoration:
              const BoxDecoration(color: Color(0xffD9D9D9), shape: BoxShape.circle),
        )),
    StepperData(
        subtitle:
        StepperText('Full-time • 10 months'),
        title: StepperText(
          "Junior Project Manager",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        iconWidget: Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.all(3),
          decoration:
          const BoxDecoration(color: Color(0xffD9D9D9), shape: BoxShape.circle),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appMainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              const ProfileCard(),
              SizedBox(
                height: 16.h,
              ),
              const HighlightsCard(),
              SizedBox(
                height: 16.h,
              ),
              /// --Experience Card
              ExperianceCard(stepperData: stepperData)
            ],
          ),
        ),
      ),
    );
  }
}


