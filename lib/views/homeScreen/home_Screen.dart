import 'dart:core';
import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabreek/constants/colors/colors.dart';
import 'package:tabreek/constants/text/text_consts.dart';
import 'package:tabreek/views/homeScreen/widgets/customSearchBar.dart';

import '../popUpCard/popUpCard.dart';
import '../welcome_Screen/widget/customCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>  titleList =[
    appJObTitleList1,
    appJObTitleList2,
    appJObTitleList3,
    appJObTitleList4,
    appJObTitleList5,
  ];
  List<String> companyNameList = [
    appCompanyName1,
    appCompanyName2,
    appCompanyName3,
    appCompanyName4,
    appCompanyName5,
  ];
  List<String> addressList = [
    appJobAddress1,
    appJobAddress2,
    appJobAddress3,
    appJobAddress4,
    appJobAddress5,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appMainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h,),
              /// --RichTExt
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  richText()
                ],
              ),
              SizedBox(height: 20.h,),
              /// --CustomSearchBar
              const CustomSearchBar(),
              SizedBox(height: 43.h,),
              const Text('Latest Jobs', style: TextStyle(fontSize: 18),),
              SizedBox(height: 13.h,),
              /// --Card
              SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      title: titleList[index],
                      companyName: companyNameList[index],
                      address: addressList[index],
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return PopupCard(

                            );
                          },);
                      },
                    );
                  }),
              ),],
          ),
        ),
      ),
    );
  }
  /// --Rich Text Widget
  Widget richText (){
    return                   Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Tabreek ',
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w100),
          children: <TextSpan>[
            TextSpan(
              text: 'is the',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            TextSpan(
              text: ' #1',
              style: TextStyle(color: Colors.black, fontSize: 18,),
            ),
            TextSpan(
              text: ' destination to find\nand list incredible remote jobs. ',
              style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w400,),
            ),
          ],
        ),
      ),
    );
  }
}




