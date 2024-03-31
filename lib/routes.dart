import 'package:ecommerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/success_sinup.dart';
import 'package:ecommerce_app/view/screen/homescreen.dart';
import 'package:ecommerce_app/view/screen/items.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/myfavorite.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:ecommerce_app/view/screen/productdetails.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';


List<GetPage<dynamic>>?routes=[
  //Auth
  GetPage(name: "/", page: ()=>Language(),middlewares: [MyMiddleWare()]),
 // GetPage(name:  "/", page: ()=>TestView(),),
  GetPage(name:  AppRoute.login, page: ()=>Login(),),
  GetPage(name:  AppRoute.signUp, page: ()=>SignUp() ),
  GetPage(name:  AppRoute.forgetPassword, page: ()=>ForgetPassword(),),
  GetPage(name:  AppRoute.verifyCode, page: ()=>VerfiyCode(),),
  GetPage(name: AppRoute.resetPassword, page: ()=>ResetPassword(),),
  GetPage(name: AppRoute.successResetPassword, page: ()=>SuccessRestPasword(),),
  GetPage(name:   AppRoute.successSignUp, page: ()=>SuccessSignUp(),),
  //OnBoarding
  GetPage(name:  AppRoute.OnBoarding, page: ()=>OnBoarding(),),
  GetPage(name:  AppRoute.verifyCodeSignUp, page: ()=>VerifyCodeSignUp(),),
  GetPage(name:  AppRoute.homepage, page: ()=>HomeScreen(),),
  GetPage(name:  AppRoute.items, page: ()=>Items(),),
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()),

];
