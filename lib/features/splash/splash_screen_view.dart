import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_getx/features/splash/splash_screen_controller.dart';

class splashScreenView extends GetView<SplashScreenController> {


  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashScreenController(),
        builder: (dynamic _) => Scaffold(
          backgroundColor: Colors.greenAccent,

        )
    );
  }

}
