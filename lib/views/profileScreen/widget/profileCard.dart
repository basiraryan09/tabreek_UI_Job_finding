import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabreek/constants/images/images_consts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 227.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(height: 60.h,),
                const Text('Marian Hart', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 28),),
                SizedBox(height: 20.h,),
                const Text(
                  textAlign: TextAlign.center,
                  'Director of Project Management GoldenPhase Solar', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13),),
                SizedBox(height: 10.h,),
                const Text('Syracuse University -  New York', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13),),
                SizedBox(height: 10.h,),
                const Text('Greater San Diego Area / 500+ connections', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13),),
              ],
            ),
          ),
        ),
         Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(appAvatar, fit: BoxFit.cover,),
            ),
        ),
      ],
    );
  }
}