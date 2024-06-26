
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/home.dart';
import '../view/screen/settings.dart';

abstract class HomeScreenController extends GetxController{
  changepage(int currentpage);
}

class  HomeScreenControllerImp extends HomeScreenController{
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Settings"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Profile"))],
    ),
    Settings()
  ];
  List bottomappbar = [
    {"title": "home", "icon": Icons.home},
    {"title": "n", "icon": Icons.notifications_active_outlined},
    {"title": "profile", "icon": Icons.person_pin_sharp},
    {"title": "settings", "icon": Icons.settings}
  ];
  @override
  changepage(int i) {
    currentpage=i;
    update();




  }

}