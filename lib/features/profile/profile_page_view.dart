import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_getx/core/constant.dart';
import 'package:firebase_getx/features/profile/profile_page_controller.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class profilePageView extends GetView<profileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar
      appBar: AppBar(
        backgroundColor: mPrimaryColor,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_rounded, color: Colors.white,),
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
        actions: [
          Padding(
            padding:  EdgeInsets.fromLTRB(0,0,Get.width*0.05,0),
            child: Icon(Icons.search_rounded, color: Colors.white, size: 27,),
          ),
        ],
      ),

      // Body
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                height: Get.height*0.222,
                decoration: BoxDecoration(
                    color: mPrimaryColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Get.width*0.15))
                ),
              ),

              // Personal Informations and balance
              Padding(
                padding:EdgeInsets.fromLTRB(Get.width*0.03,Get.height*0.016,Get.width*0.01,0),
                child: SizedBox(
                  height: Get.height*0.32,
                  width: Get.width*0.95,

                  child: Card(
                    color: Colors.white,
                    surfaceTintColor: Theme.of(context).colorScheme.surface,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                    ),
                    child: Column(
                      children: [

                        // Personal Information row
                        Padding(
                          padding:EdgeInsets.fromLTRB(12,12,12,0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Profile Image Part
                              SizedBox(
                                height: 97.0,
                                width: 97.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset('assets/images/anya.jpeg',
                                    fit: BoxFit.fill,

                                  ),
                                ),
                              ),

                              // Middle Part
                              SizedBox(
                                height: 115.0,
                                width: 200.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0,top: 2.0),
                                      child: Text("Victor Hamilton", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21.0,),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text("victor@gmail.com", style: TextStyle(fontSize: 13.0, color: Colors.grey),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6.0),
                                      child: TextButton(
                                          onPressed: (){},
                                          child: Text("Edit Profile", style: TextStyle(color: Color(0xff1a3874), fontSize: 15.0, fontWeight: FontWeight.w600),)),
                                    )
                                  ],
                                ),
                              ),

                              // location button
                              Padding(
                                padding: const EdgeInsets.fromLTRB(29,0,0,0),
                                child: SizedBox(
                                  height: 43.0,
                                  width: 43.0,
                                  child: Card(
                                    elevation: 3.0,
                                    color: Colors.white,
                                    surfaceTintColor: Theme.of(context).colorScheme.surface,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: Icon(Icons.location_on, color: Colors.black,size: 22.0,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Divider(
                        //   color: Colors.grey,
                        //   indent: 13.0,
                        //   endIndent: 13.0,
                        // ),
                        // Balance and Cashback options
                        Row(
                          children: [
                            // Balance Icon
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                                child: Card(
                                  color: Color(0xfffbf3b5),
                                  elevation: 0.0,
                                  child: Icon(PhosphorIcons.wallet(), color: Color(0xfff0d131), size: 40.0,),
                                ),
                              ),
                            ),

                            // Balance Text
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Text("Balance", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                                  ),

                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text("Rs.450", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),),
                                ],
                              ),
                            ),
                            // Cashback Icon
                            Padding(
                              padding: const EdgeInsets.only(left: 53.0),
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                                child: Card(
                                  color: Color(0xffbdc5d8),
                                  elevation: 0.0,
                                  child: Icon(FeatherIcons.dollarSign, color: Colors.white, size: 35.0,),
                                ),
                              ),
                            ),

                            // Cashback Text
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Text("Cashback", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                                  ),

                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text("Rs.23", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),),
                                ],
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height: 20.0,),

                        // Measure bar
                        Stack(
                            children: [
                              Container(
                                height: 11.0,
                                width: 350.0,
                                decoration: BoxDecoration(
                                    color: Color(0xfff0f0f0),
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                              ),
                              Container(
                                height: 11.0,
                                width: 240.0,
                                decoration: BoxDecoration(
                                    color: Color(0xfff0d131),
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                              ),
                            ]
                        ),

                        // Payment reminder and due date
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,10,0,0),
                              child: Text("Pay House rent - Reminder", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(90,8,0,0),
                              child: Text("Apr 29,2020", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey),),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // "Saved Card" text
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0,315.0,0,0),
                child: Text("Saved Card", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0 ),),
              ),

              // Card details card
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,345.0,20.0,0),
                child: Container(
                  width: 450.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0)
                  ),

                  child: Card(
                    color: Colors.white,
                    surfaceTintColor: Theme.of(context).colorScheme.surface,
                    elevation: 1.0,
                    child: Column(
                      children: [

                        // Upper Part
                        Row(
                          children: [
                            // Check circle
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12,0,0,0),
                              child: CircleAvatar(
                                radius: 16.0,
                                backgroundColor: Color(0xff1a3874),
                                child: Icon(Icons.check,color: Colors.white70, size: 24.0,),
                              ),
                            ),

                            // Card Number
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10,0,0,0),
                              child: Text("XXXX XXXX XXXX 4321", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),),
                            ),

                            // Card icon
                            Padding(
                              padding: const EdgeInsets.fromLTRB(65,0,0,0),
                              child: Image.asset('assets/images/mastercard_icon.png',height: 60.0, width: 60.0,),
                            )
                          ],
                        ),

                        // lower part
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18,10,0,0),
                              child: Text("Mario Speedwagon", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(89,10,0,0),
                              child: Text("VALID THRU   08/ 28", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              // "Other Details" text
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0,470.0,0,0),
                child: Text("Other Details", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0 ),),
              ),

              // Other options card
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,500.0,20.0,0),
                child: Container(
                  height: 400.0,
                  width: 450.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0)
                  ),

                  child: Card(
                      color: Colors.white,
                      surfaceTintColor: Theme.of(context).colorScheme.surface,
                      elevation: 0.0,
                      child: GridView.count(
                        crossAxisCount: 3,
                        children: [

                          // QR Code option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,8,4,4),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Icon(PhosphorIcons.qrCode(), color: Color(0xff1a3874), size: 28.0,),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("QR Code", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          // Address option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6,8,6,4),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Icon(FeatherIcons.home, color: Color(0xff1a3874),),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Address", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          // Password option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4,8,8,4),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Icon(FeatherIcons.lock, color: Color(0xff1a3874),),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Password", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          // UPI option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,4,4,4),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Icon(FeatherIcons.maximize, color: Color(0xff1a3874),),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("My UPI ID", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          // Notification option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6,4,4,4),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Icon(FeatherIcons.bell, color: Color(0xff1a3874),),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Notification", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          //  Language option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6,4,8,4),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Text("A", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 23.0,color:Color(0xff1a3874) ),),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Language", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          // Bill option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,4,4,8),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Image.asset('assets/images/invoice_image.png',fit: BoxFit.cover, height: 20.0, width: 20.0,),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Bills", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          // Transactions option
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6,4,4,8),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Icon(FeatherIcons.dollarSign, color: Color(0xff1a3874),),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Transactions", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                          // Due payments
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6,4,8,8),
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,14,0,0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xfff1efef),
                                      child: Icon(FeatherIcons.slash, color: Color(0xff1a3874),),
                                      radius: 25.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),
                                  Text("Due Bills", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),
                          ),

                        ],
                      )
                  ),
                ),
              ),

            ],
          ),
        ),
      ),);
  }
}
