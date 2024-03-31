import 'package:ecommerce_app/controller/auth/successsignup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/auth/custombuttomauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.backgroundcolor,
        title:  Text('32'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
        children: [
            Center(child: Icon(Icons.check_circle_outline,size: 200,color: AppColor.primaryColor,)),
          Text("37".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),
          Text("38".tr),
          Spacer(),
          Container(
            width: double.infinity,
            child: CustomButtomAuth(  text: "31".tr, onPressed: () {
              controller.goToPageLogin();
            }),
          ),
          SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
