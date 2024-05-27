import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class loginController  extends GetxController{
  RxString loginText = "Login Page".obs;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  RxBool termsChecked = false.obs;


}

