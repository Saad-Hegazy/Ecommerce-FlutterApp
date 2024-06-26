

import 'package:ecommerce_app/controller/homescreen_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widget/home/custombottomappbarhome.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(builder: (controller)=>Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        onPressed: (){}, child:const  Icon(Icons.shopping_basket_outlined,),),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:const CustomBottomAppBarHome(),


      body: controller.listPage.elementAt(controller.currentpage),
    )
    );
  }
}
