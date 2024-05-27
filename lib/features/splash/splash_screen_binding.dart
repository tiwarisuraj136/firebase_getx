 import 'package:get/get.dart';
import 'package:firebase_getx/features/splash/splash_screen_controller.dart';

class splashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    // TODO: implement dependencies
  }

}