
import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/class/handlingdataview.dart';
import 'package:ecommerce_app/linkabi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';
import '../widget/customappbar.dart';
import '../widget/home/customcardhome.dart';
import '../widget/home/customtitlehome.dart';
import '../widget/home/listcategorieshome.dart';
import '../widget/home/listitemshome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(
                        titleappbar: "Find Product",
                        onPressedSearch: () {},
                        onPressedIconFavorite: () {
                          Get.toNamed(AppRoute.myfavroite) ;
                        }),

                    const CustomCardHome(
                        title: "A summer surprise", body: "Cashback 20%"),
                    const CustomTitleHome(title: "Categories"),
                    const ListCategoriesHome(),
                    const CustomTitleHome(title: "Product for you"),
                    const ListItemsHome(),
                    // const CustomTitleHome(title: "Offer"),
                    // const ListItemsHome()
                  ],
                ))));
  }
}