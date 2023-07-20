import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tabreek/constants/colors/colors.dart';
import 'package:tabreek/views/welcome_Screen/provider/myState.dart';
import 'package:tabreek/views/welcome_Screen/widget/carousal.dart';
import 'package:tabreek/views/welcome_Screen/widget/customButton.dart';
import 'package:tabreek/views/welcome_Screen/widget/dotIndicator.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appMainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Consumer<MyState>(
          builder: (context, myState, _) {
            return Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: myState.pageController,
                    itemCount: myState.imageList.length,
                    itemBuilder: (context, index) {
                      return Carousal(
                        imageList: myState.imageList,
                        index: index,
                      );
                    },
                    onPageChanged: (index) {
                      myState.nextPage(index);
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  myState.titleList[myState.currentPage],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  myState.descriptionList[myState.currentPage],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30.h),
                /// --Custom Button
                CustomButton(
                  onPress: () => myState.nextPage(),
                  name: myState.currentPage == myState.imageList.length - 1
                      ? 'Done'
                      : 'Next',
                ),
                const SizedBox(height: 20),
                /// --Dot Indicator
                DotIndicator(
                  imageList: myState.imageList,
                  currentPage: myState.currentPage,
                ),
                SizedBox(height: 80.h),
              ],
            );
          },
        ),
      ),
    );
  }
}
