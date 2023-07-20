import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/images/images_consts.dart';

class HighlightsCard extends StatelessWidget {
  const HighlightsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Highlights', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(appGoogleIcon, width: 30.w, height: 30.h,),
                  ),
                ),
                SizedBox(width: 10.w,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        textAlign: TextAlign.start,
                        "Marian has received Google\nCertification"),
                    Text("Google Project Management Certificate", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}