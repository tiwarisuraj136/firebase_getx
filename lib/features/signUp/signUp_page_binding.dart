import 'package:get/get.dart';
import 'package:firebase_getx/features/signUp/signUp_page_controller.dart';

class signUpBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => signUpController());
  }

}