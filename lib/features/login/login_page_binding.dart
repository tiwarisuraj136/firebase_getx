import 'package:get/get.dart';
import 'login_page_controller.dart';

class loginPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => loginController());
    // TODO: implement dependencies
  }

}