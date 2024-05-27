import 'package:get/get.dart';
import 'package:firebase_getx/features/home/home_page_binding.dart';
import 'package:firebase_getx/features/login/login_page_binding.dart';
import 'package:firebase_getx/features/login/login_page_view.dart';
import 'package:firebase_getx/features/profile/profile_page_binding.dart';
import 'package:firebase_getx/features/profile/profile_page_view.dart';
import 'package:firebase_getx/features/signUp/signUp_page_binding.dart';
import 'package:firebase_getx/features/signUp/signUp_page_view.dart';
import 'package:firebase_getx/features/splash/splash_screen_binding.dart';
import 'package:firebase_getx/features/splash/splash_screen_view.dart';
import 'package:firebase_getx/routing/routes_constant.dart';

import '../features/dashboard/dashboard_binding.dart';
import '../features/dashboard/dashboard_view.dart';
import '../features/home/home_page_view.dart';

List<GetPage> getpages = [
  GetPage(
      name: RoutesConstant.login,
      page: () => loginPageView(),
    binding: loginPageBinding(),
  ),

  GetPage(
   name: RoutesConstant.home,
    page: () => homePageView(),
    binding: homePageBinding(),
  ),

  GetPage(
      name: RoutesConstant.splash,
      page: () => splashScreenView(),
      binding: splashBinding(),
  ),

  GetPage(
      name: RoutesConstant.signUp,
      page: () => signUpPageView(),
      binding: signUpBinding(),
  ),

  GetPage(
      name: RoutesConstant.profile,
      page: () => profilePageView(),
      binding: profilePageBinding(),
  ),

  GetPage(
    name: RoutesConstant.dashBoard,
    page: () => dashboardView(),
    binding: dashboardBinding(),
  ),

];