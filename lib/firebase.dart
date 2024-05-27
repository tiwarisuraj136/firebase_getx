import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_getx/core/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseData{
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future isEmailExist({required String email}) async {
    print('email15');
    print(email);
    print('email17');
    var checkEmail = await firestore
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    print('checkEmail19');
    print(checkEmail);
    print('checkEmail21');
    return checkEmail.docs.isEmpty;
  }



  static Future addUser({
    required String name,
    required String password,
    required String email,
  }) async {


    await isEmailExist(email: email).then((value) async {
      print('value32');
      print(value);
      print('value34');
      if (value) {
        print("adding user in firestore database");
        await firestore.collection('users').add({
          'name': name,
          'email': email,
          'password': password,
        });

        return true;
      }else{
        print("hello i am here 49 failled");
      }
    });
    return false;
  }


  static signupWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential).then((e) async {
        addUser(
             name: e.user!.displayName!,
             email: e.user!.email!,
             password: 'abcd@1234',
            )
            .then((value) async {
              print(value);
              if(value){
                appData.isLogin = true;
                appData.name = e.user!.displayName!;
                appData.email = e.user!.email!;
                appData.password = 'abcd@1234';
                print("hello successful 72");
                Get.toNamed("home_page_view.dart");
                // Get.back();
                // Get.offAllNamed(Routes.dashboard);
              }else{
                print("Email is already exist");
                Get.snackbar("Warning", "This Email is already exist");
              }
             // await GoogleSignIn().signOut();
          print('successfully login & data added firebase');
        });
      });
    } catch (e) {
      Get.back();
      print('Google exception : $e');
    }
  }

  static signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await auth.signInWithCredential(credential).then((value) async {
     bool isExist = await isEmailExist( email: value.user!.email!);
     print('isExisthhhhh');
     print(isExist);
     print(value.user!.email!);
     print('value.user!.email!fgff');
     if(!isExist){
       Get.toNamed("home_page_view.dart");
     }else{
       Get.snackbar('Warning', 'Invalid Credential');
     }
    });
  }

  static normalLogin({required String email, required String password}) async {
    Get.back();
    // CustomLoader().linearLoader();
    try {

     var snapshot =  await firestore.collection('users').where('email',isEqualTo: email).where('password',isEqualTo: password).get();

     if(snapshot.docs.isNotEmpty){
       var data = snapshot.docs[0].data();
       Get.toNamed("home_page_view.dart");
     }
     else{
       Get.snackbar("warning", "Invalid credential");
       print("user not signup yet");
     }

    } on FirebaseException catch (e) {
      print('login exception : ${e.code}');
        Get.snackbar('Warning', 'Something went wrong',
            backgroundColor: Colors.red,
            borderRadius: 5,
            snackPosition: SnackPosition.TOP,
            animationDuration: const Duration(milliseconds: 800));
    }
  }
}