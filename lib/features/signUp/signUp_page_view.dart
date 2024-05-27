
import 'package:firebase_getx/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_getx/features/signUp/signUp_page_controller.dart';

class signUpPageView extends GetView<signUpController> {

  GlobalKey<FormState> registerKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Sign Up"),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Form(
        key: registerKey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/signUp.jpg'),
                    height: Get.height*0.13,
                    width: Get.width*0.4,
                  ),

                  Padding(
                    padding: EdgeInsets.all(Get.width*0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        Text("Register", style: TextStyle(fontSize: Get.width*0.05, fontWeight: FontWeight.w600),),
                        Text("Enter your personal Information", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),),


                        SizedBox(height: Get.height*0.0125,),

                        // Username Field
                        Text("Username", style: TextStyle(fontSize:Get.width*0.04, fontWeight: FontWeight.w600),),
                        SizedBox(height: Get.width*0.01),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 45
                          ),
                          child: TextFormField(
                            controller: controller.usernameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius:BorderRadius.circular(Get.width*0.012),),
                                // labelText: "Enter your name",
                              errorStyle: const TextStyle(height: 0.01),

                            ),
                            style: TextStyle(color: Colors.grey),
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Enter a username";
                              }
                            },
                          ),
                        ),

                        SizedBox(height: Get.height*0.0125,),


                        // Email Field

                        Text("Email", style: TextStyle(fontSize: Get.width*0.04, fontWeight: FontWeight.w600),),
                        SizedBox(height: Get.width*0.01),

                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 45
                          ),
                          child: TextFormField(
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius:BorderRadius.circular(Get.width*0.012),),
                                labelText: "Enter your email id",
                              errorStyle: const TextStyle(height: 0.01),

                            ),
                            style: TextStyle(color: Colors.grey),
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Enter the email";
                              }
                            },
                          ),
                        ),
                                      //
                        SizedBox(height: Get.height*0.0125,),

                        //  Password Field

                        Text("Password", style: TextStyle(fontSize: Get.width*0.04, fontWeight: FontWeight.w600),),
                        SizedBox(height: Get.width*0.01),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 45
                          ),
                          child: TextFormField(
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius:BorderRadius.circular(Get.width*0.012) ),
                              labelText: "Password",
                              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                              errorStyle: const TextStyle(height: 0.01),

                            ),
                            style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,),

                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Enter a password";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: Get.height*0.0125,),
                                      //
                        // Confirm Password Field

                        Text("Confirm Password", style: TextStyle(fontSize: Get.width*0.04, fontWeight: FontWeight.w600),),
                        SizedBox(height: Get.width*0.01),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 45
                          ),
                          child: Obx(
                            () => TextFormField(
                              controller: controller.confirmedPasswordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius:BorderRadius.circular(Get.width*0.012) ),
                                labelText: "Confimed Password",
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    controller.showPassword.value = !controller.showPassword.value;
                                  },
                                    icon: Icon(
                                        controller.showPassword.value? Icons.visibility: Icons.visibility_off
                                    )),

                                  errorStyle: const TextStyle(height: 0.01),

                              ),
                              style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,),
                              validator: (String? value){
                                if(value!.isEmpty){
                                  return "Confimed Password";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height*0.007,),

                        // Gender selection buttons
                        Row(
                          children: [
                            Text("Gender : ", style: TextStyle(fontSize: Get.width*0.04, fontWeight: FontWeight.w600),),
                            SizedBox(
                              width: Get.width*0.09,
                              child: Obx(
                                () => RadioListTile(
                                  value: 1,
                                  groupValue: controller.selectGender.value,
                                  onChanged: (value){
                                      controller.selectGender.value= value!;
                                  },
                                ),
                              ),
                            ),
                            Text("Male"),

                            SizedBox(width: Get.width*0.05,),
                            SizedBox(
                              width: Get.width*0.09,
                              child: Obx(
                                () =>  RadioListTile(
                                  value: 2,
                                  groupValue: controller.selectGender.value,
                                  onChanged: (value){
                                      controller.selectGender.value= value!;
                                  },
                                ),
                              ),
                            ),
                            Text("Female")
                          ],
                        ),
                                      //
                        SizedBox(height: Get.height*0.002,),
                                      //
                        // Language selection buttons
                        Row(
                          children: [
                            Text("Language : ", style: TextStyle(fontSize: Get.width*0.04, fontWeight: FontWeight.w600),),
                            Obx(
                                () => Checkbox(
                                  value: controller.valuefirst.value,
                                  onChanged: (value){
                                    controller.valuefirst.value = value!;

                                  }),
                            ),
                            Text("Hindi"),
                            Obx(
                              () => Checkbox(
                                  value: controller.valuesecond.value,
                                  onChanged: (value){
                                      controller.valuesecond.value = value!;
                                  }),
                            ),
                            Text("English"),
                          ],
                        ),
                        SizedBox(height: Get.height*0.002,),


                        // Dropdown option for coding languages
                        Row(
                          children: [
                            Text("Programming language : ", style: TextStyle(fontSize: Get.width*0.04, fontWeight: FontWeight.w600),),
                            DropdownButtonHideUnderline(
                              child: Container(
                                height:  Get.height*0.038,
                                width: Get.width*0.28,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Get.width*0.1),
                                    border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: Get.width*0.0015)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(Get.width*0.03, 0, Get.width*0.01,0),
                                  child: Obx(
                                    () => DropdownButton(
                                      value: controller.dropvalue.value,
                                      items: ["None","Flutter","PHP", "Java", "Python","Javascript"].map((e){
                                        return DropdownMenuItem(
                                            value: e,
                                            child: Text(e));
                                      }).toList(),
                                      onChanged: (String? value){
                                        if (value != null){
                                          controller.dropvalue.value = value;
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height*0.012),
                                      //
                        //  Check Box for agreement of term's and conditions

                        Row(
                          children: [
                            Obx(
                              () => Checkbox(
                                  value: controller.termsChecked.value,
                                  onChanged: (value){
                                      controller.termsChecked.value = value!;
                                  }),
                            ),
                            Text("I Agree to Term's & Conditions"),
                          ],
                        ),

                                      //
                        // Register Button
                        SizedBox(
                          height: Get.height*0.058,
                          width: Get.width*1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.blue
                            ),
                            onPressed: (){
                              // When term's are agreed and required fields are filled
                              if(registerKey.currentState!.validate() && controller.termsChecked.value) {
                                      Get.dialog(
                                        AlertDialog(
                                          title: Text("Confirmed",),


                                          content: SizedBox(
                                            height: Get.height*0.2,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(top: Get.height*0.14),
                                                  child: ElevatedButton(
                                                    child: Text("Submit"),
                                                    onPressed: (){
                                                      Get.toNamed("home_page_view.dart");
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );

                              }
                                      //
                              // When term's are not agreed
                              // if(!controller.termsChecked.value){
                              //   // Shows an error
                              //   Get.showSnackbar(
                              //     GetSnackBar(
                              //       title: "Error",
                              //       message: "Please select the checkbox",
                              //       duration: const Duration(seconds: 3),
                              //     )
                              //   );
                                // final snackBar = SnackBar(
                                //   content: Text("Error"),
                                //   duration: Duration(seconds: 4),
                                //   action: SnackBarAction(
                                //     label: "",
                                //     onPressed: (){},
                                //     textColor: Colors.white70,
                                //   ),
                                //   backgroundColor: Color(0xffFF7878),
                                // );
                                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              // }

                              else{
                                return null;
                              }

                            },
                            child: Text("Register",style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),

                        SizedBox(height: 15.0,),
                                      //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Divider(color: Colors.grey, endIndent: Get.width*0.01,)),
                            Text("Or Sign up with"),
                            Expanded(child: Divider(color: Colors.grey,indent: Get.width*0.01,)),
                          ],
                        ),

                        SizedBox(height: 10.0),

                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  FirebaseData.signupWithGoogle();

                                  print("Container tapped");
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

                              /*  Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 50.0,
                                width: 60.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/search.png',),
                                ),
                              ),*/
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 50.0,
                                width: 60.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/facebook.png'),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 50.0,
                                width: 60.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/apple.png'),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 5.0,),
                        // Navigation to login page
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have a account ?"),
                            TextButton(
                                onPressed: (){
                                  Get.toNamed("login_page_view.dart");
                                },
                                child: Text("Login")
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
