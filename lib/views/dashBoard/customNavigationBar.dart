import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../homeScreen/home_Screen.dart';
import '../profileScreen/profileScreen.dart';


class SnakeNavigationBarExampleScreen extends StatefulWidget {
  const SnakeNavigationBarExampleScreen({Key? key}) : super(key: key);

  @override
  _SnakeNavigationBarExampleScreenState createState() =>
      _SnakeNavigationBarExampleScreenState();
}

class _SnakeNavigationBarExampleScreenState
    extends State<SnakeNavigationBarExampleScreen> {

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = Colors.grey;
  Color unselectedColor = Colors.blueGrey;
  final List _pages = [
    HomeScreen(),
    Container(color: Colors.blue,),
    Container(color: Colors.pinkAccent,),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Tabreek',
       style: TextStyle(letterSpacing: 15, color: Colors.black, fontWeight: FontWeight.w300),),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.menu, color: Colors.black,),
          )
        ],
      ),
      body: AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: _pages[_selectedItemPosition]
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        snakeShape: SnakeShape.rectangle,
        behaviour: SnakeBarBehaviour.pinned,
        currentIndex: _selectedItemPosition,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        snakeViewColor: selectedColor,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart, color: Colors.black,),
            label: 'Journey',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined, color: Colors.black,),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined, color: Colors.black,),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
    );
  }
}