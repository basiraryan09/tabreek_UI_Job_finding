import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/images/images_consts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key, required this.title, required this.companyName, required this.address, required this.onTap,
  });

  final String title, companyName, address;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 25,
                color: Colors.black.withOpacity(0.05),

              )
            ]
        ),
        height: 89.h,
        width: double.infinity,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(title, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                Row(
                  children: [
                    Image.asset(appCompanyIcon,width: 15.w, height: 11.h,),
                    SizedBox(width: 2.w,),
                     Text(companyName),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined, size: 15.r,),
                    //SizedBox(width: 2.w,),
                    Text(address,overflow: TextOverflow.ellipsis,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}