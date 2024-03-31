import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/changelocal.dart';
import '../widget/language/custombuttomlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("1".tr,style:Theme.of(context).textTheme.headline1,),
            SizedBox(height: 20,),
            CustomButtonLang(textbutton: 'Ar',onPressed: (){
              controller.changeLang("ar");
              Get.toNamed(AppRoute.OnBoarding);
            }),
            CustomButtonLang(textbutton: 'En',onPressed:(){
              controller.changeLang("en");
              Get.toNamed(AppRoute.OnBoarding);
            } ),


          ]
        )
      ),
    );
  }
}

