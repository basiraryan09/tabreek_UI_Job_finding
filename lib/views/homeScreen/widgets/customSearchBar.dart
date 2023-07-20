import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors/colors.dart';


class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 25,
            offset: Offset(0, 4),
            color: Colors.black.withOpacity(0.1)
          )
        ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              suffixIcon: Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                    color: appSearchContainer,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: const Icon(Icons.search, color: Colors.black,),
              ),
              hintText: 'Search jobs',
              border: InputBorder.none,
              hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ),
      ),
    );
  }
}