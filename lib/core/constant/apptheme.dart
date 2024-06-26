import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish= ThemeData(
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20,  color:AppColor.black,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 26,  color:AppColor.black,
    ),
    bodyText1:TextStyle(
      height: 2,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ) ,
    bodyText2:TextStyle(
      height: 2,
      color: AppColor.grey,
      fontSize: 14,

    ) ,
  ),
  primarySwatch: Colors.blue,
);
ThemeData themeArabic = ThemeData(
  fontFamily: "Ciro",
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20,  color:AppColor.black,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 26,  color:AppColor.black,
    ),
    bodyText1:TextStyle(
      height: 2,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ) ,
    bodyText2:TextStyle(
      height: 2,
      color: AppColor.grey,
      fontSize: 14,

    ) ,
  ),
  primarySwatch: Colors.blue,
);