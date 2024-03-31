import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

class MyMiddleWare  extends GetMiddleware{
  int? get  priority => 1;
  MyServices myServices =Get.find();
  @override
  RouteSettings? redirect(String?route){
    if(myServices.sharedPreferences.getString("step")=="2"){
      return  const RouteSettings(name: AppRoute.homepage);
    }

  if(myServices.sharedPreferences.getString("step")=="1"){
    return  const RouteSettings(name: AppRoute.login);
  }

  }

}