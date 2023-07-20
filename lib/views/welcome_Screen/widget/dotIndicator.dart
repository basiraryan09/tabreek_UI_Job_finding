import 'package:flutter/material.dart';

import '../../../constants/colors/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.imageList,
    required int currentPage,
  }) : _currentPage = currentPage;

  final List<String> imageList;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(imageList.length, (index) {
        return Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? appDotColor : appInActiveDotColor,
          ),
        );
      }),
    );
  }
}