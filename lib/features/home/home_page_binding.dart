import 'package:get/get.dart';
import 'package:firebase_getx/features/home/home_page_controller.dart';

class homePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    // TODO: implement dependencies
  }

}