import 'package:firebase_getx/firebase.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:get/get.dart';
import 'package:firebase_getx/core/constant.dart';
import 'package:firebase_getx/features/home/home_page_view.dart';
import 'package:firebase_getx/routing/routes_constant.dart';

import 'login_page_controller.dart';

class loginPageView extends GetView<loginController>{

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     resizeToAvoidBottomInset: false,
     appBar: AppBar(
       title: Text("Login"),
       leading: IconButton(
         onPressed: (){},
         icon: Icon(Icons.arrow_back_rounded,
         ),
       ),
     ),

     body: Form(
       key: formKey,
       child: Container(

         color: Colors.white,
         child: Column(
           children: [
            /* AvifImage.asset(
               "assets/images/fox.avif",
               height: 200,
               fit: BoxFit.contain,
             ),*/
             Image(
               image: AssetImage('assets/images/login_image.jpg'),
               height: Get.height*0.25,
               width:  Get.width*0.9,
             ),

             Center(
               child: SizedBox(
                 height: Get.height*0.6,
                 width: Get.width*1,
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(20,0,20,20),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.fromLTRB(5,0,0,0),
                         child: Text("Login", style: TextStyle(fontSize: Get.width*0.06, fontWeight: FontWeight.w600),),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(5,0,0,0),
                         child: Text("Login to continue using the app", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),),
                       ),


                       SizedBox(height: Get.height*0.017),

                       // Email field
                       Padding(
                         padding: const EdgeInsets.fromLTRB(5,0,0,0),
                         child: Text("Email", style: TextStyle(fontSize: Get.width*0.055, fontWeight: FontWeight.w600),),
                       ),

                       SizedBox(height: Get.height*0.005),

                       Expanded(
                         child: SizedBox(
                           height: Get.height*0.058,
                           child: TextFormField(
                             controller: controller.emailController,
                             decoration: InputDecoration(
                               errorMaxLines: 2,
                                 border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0),),
                                 labelText: "Enter your email",
                               contentPadding: EdgeInsets.symmetric(
                                 horizontal: 10,
                                 vertical: 10,
                               )
                             ),
                             style: TextStyle(color: Colors.black),
                             validator: (String? value){
                               if (value!.isEmpty){
                                 return "Enter email address";
                               }
                             },

                           ),
                         ),
                       ),
                       SizedBox(height: Get.height*0.017),

                       // Password field
                       Padding(
                         padding: const EdgeInsets.fromLTRB(5,0,0,0),
                         child: Text("Password", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),),
                       ),

                       SizedBox(height: Get.height*0.005),

                       Expanded(
                         child: SizedBox(
                           height: Get.height*0.058,
                           child: TextFormField(
                             controller: controller.passwordController,
                             decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                     borderRadius:BorderRadius.circular(10.0)
                                 ),
                                 labelText: "Enter password",
                                 suffixIcon: IconButton(
                                     onPressed: (){},
                                     icon: Icon(Icons.remove_red_eye_outlined)),
                               errorMaxLines: 2,
                         
                             ),
                             style: TextStyle(color: Colors.black),
                             validator: (String? value){
                               if(value!.isEmpty){
                                 return "There should a password";
                               }
                               if(value.length<6){
                                 return "Password should be of minimum 6 characters";
                               }
                               return null;
                             },
                         
                           ),
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           TextButton(
                               onPressed: (){},
                               child: Text("Forgot Password?", style: TextStyle(color: Colors.black),)
                           ),
                         ],
                       ),

                       // Login Button
                       Center(
                         child: Container(
                           // height: 50,
                           // width: 400,
                           height: Get.height*0.058,
                           width: Get.width*0.9,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                                 foregroundColor: Colors.black,
                                 backgroundColor: Colors.blue
                             ),
                             onPressed: () async{
                               if(formKey.currentState!.validate()){
                                 //   Navigate to home page if creds are filled
                                 FirebaseData.normalLogin(
                                   email: controller.emailController.text,
                                   password: controller.passwordController.text,
                                 );


                               }

                             },
                             child: Text("Log In",style: TextStyle(color: Colors.white),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: Get.height*0.01),

                       Row(
                         children: [
                           Expanded(child: Divider(color: Colors.grey, indent: Get.width*0.025, endIndent: Get.width*0.01,)),
                           Text("Or Login with"),
                           Expanded(child: Divider(color: Colors.grey, indent: Get.width*0.01, endIndent: Get.width*0.025,)),
                         ],
                       ),
                       SizedBox(height:Get.height*0.02),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           GestureDetector(
                             onTap: () {
                               FirebaseData.signInWithGoogle();

                               print("Container tapped Login Page");
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 border: Border.all(color: Colors.grey),
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               height: 50.0,
                               width: 60.0,
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Image.asset('assets/images/search.png'),
                               ),
                             ),
                           ),
                          /* Container(
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.grey,),
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             height: Get.height*0.068,
                             width: Get.width*0.18,
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Image.asset('assets/images/search.png',),
                             ),
                           ),*/
                           Container(
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.grey,),
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             height: Get.height*0.068,
                             width: Get.width*0.18,
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Image.asset('assets/images/facebook.png'),
                             ),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.grey,),
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             height: Get.height*0.068,
                             width: Get.width*0.18,
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Image.asset('assets/images/apple.png'),
                             ),
                           ),
                         ],
                       ),

                       SizedBox(height:Get.height*0.02),

                       Center(
                         child: RichText(
                           textAlign: TextAlign.center,
                           text: TextSpan(
                             text: "Don't have a account ? ",
                            style: TextStyle(color: Colors.black),
                             children: [
                               TextSpan(
                               text: 'Register here',
                               style: TextStyle(color: Colors.indigo),
                               recognizer: TapGestureRecognizer()
                                 ..onTap = () {
                                   Get.toNamed("signUp_page_view.dart");
                                 }),
                              ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
           ]
          ),
        )
      )
    );
  }
}

