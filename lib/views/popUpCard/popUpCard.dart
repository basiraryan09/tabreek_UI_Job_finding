import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabreek/constants/colors/colors.dart';

import '../../constants/images/images_consts.dart';
import '../../constants/text/text_consts.dart';

class PopupCard extends StatelessWidget {
  // final String title;
  // final String jobDescription;
  // final List<String> descriptionList;
  // final VoidCallback onPressed;

  const PopupCard({
    Key? key,
    // required this.title,
    // required this.jobDescription,
    // required this.descriptionList,
    // required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Senioer Backend Engineer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(appCompanyIcon,width: 15.w, height: 11.h,),
                    SizedBox(width: 2.w,),
                    const Text('Google'),
                  ],
                ),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined, size: 15.r,),
                    //SizedBox(width: 2.w,),
                    const Text('Lisbon, Portugal',overflow: TextOverflow.ellipsis,)
                  ],
                ),
                SizedBox(height: 26.h,),
                const Text('Job Description', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Color(0xff4B4B4B)),),
                SizedBox(height: 10.h,),
                const Text(appJobDescription, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100, color: Color(0xff4B4B4B)),),
                SizedBox(height: 10.h,),
                const Text('Job Responsibilities', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Color(0xff4B4B4B)),),
                SizedBox(height: 10.h,),
                const Text('This is Responsibilities Detail', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100, color: Color(0xff4B4B4B)),),
                SizedBox(height: 20.h,),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appButtonColor,
                        elevation: 0
                      ),
                      onPressed: (){}, child: const Text('Apply', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),)),
                )

              ],
            ),
          ),
          Positioned(
            top: -10,
            right: -10,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(width: 1)
                ),
                padding: const EdgeInsets.all(4),
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
