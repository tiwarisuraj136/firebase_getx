import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class signUpController extends GetxController{
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();

  RxInt selectGender = 0.obs;
  RxBool valuefirst = false.obs;
  RxBool valuesecond = false.obs;
  RxString dropvalue = "None".obs;
  RxBool termsChecked = false.obs;
  RxBool showPassword = false.obs;

  // Getting access to the actual firebase Auth package instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Variable to keep track of the current users that's within the application
  User? _user;



  @override
  void onReady() {
    super.onReady();
  // Setting Up a listener on auth objects
    _auth.authStateChanges().listen;{(event){
      // It will update the user according to the current user loggedin in the application
  Obx(
  () => _user = event
  );

    };};
  }

}