import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/images/images_consts.dart';
import '../../../constants/text/text_consts.dart';
import '../../dashBoard/customNavigationBar.dart';

class MyState extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  final PageController _pageController = PageController();

  PageController get pageController => _pageController;

  final List<String> imageList = [
    appWelcomeScreenImg1,
    appWelcomeScreenImg2,
    appWelcomeScreenImg3,
  ];

  final List<String> titleList = [
    appHelloTxt,
    'My World',
    appHelloTxt,
  ];

  final List<String> descriptionList = [
    appDesc1,
    appDesc2,
    appDesc3,
  ];

  void nextPage([int? index]) {
    if (index != null) {
      _currentPage = index;
    } else {
      if (_currentPage < imageList.length - 1) {
        _currentPage++;
      } else {
        // Navigate to the next screen
        Get.to(const SnakeNavigationBarExampleScreen(), transition: Transition.fadeIn);
      }
    }
    _pageController.animateToPage(
      _currentPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    notifyListeners();
  }
}
