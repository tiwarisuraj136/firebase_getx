
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home_page_controller.dart';

class homePageView extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage"),
      backgroundColor: Colors.green,
      actions: [
        IconButton(onPressed: ()async{
          print("hello ia m here line 18");
          await controller.auth.signOut();
          Get.toNamed("login_page_view.dart");
          // await GoogleSignIn().signOut();
        }, icon: const Icon(Icons.logout))
      ],),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Latitude: ${controller.position.value.latitude}"),
            Text("Longitude: ${controller.position.value.longitude}"),
            ElevatedButton(
              onPressed: () {
                controller.getCurrentPosition();
              },
              child: Text("Get Current Location"),
            ),
          ],
        ),
       ),
      // drawer:
      // Drawer(
      //   child:
      //   ListView(
      //
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //             color: Colors.blue,
      //             borderRadius: BorderRadius.circular(10.0)
      //         ),
      //         child: SizedBox(
      //             child: Text("Flutter")
      //         ),
      //       ),
      //
      //       ListTileTheme(
      //         selectedTileColor: Colors.cyan,
      //
      //         child: ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text("Profile"),
      //
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.notifications),
      //         title: Text("Notifiication"),
      //
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("Settings"),
      //
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.logout),
      //         title: Text("log out"),
      //
      //       ),
      //     ],
      //   ),
      // ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("HOMEPAGE"),
      // ),
      // body: Container(
      //     child:
      //     ListView.builder(
      //         itemCount: controller.name.length,
      //         itemBuilder: (BuildContext, int index){
      //           return Padding(
      //             padding: const EdgeInsets.fromLTRB(10.0,20,10.0,0),
      //             child: SizedBox(
      //               height: 100.0,
      //               child: Card(
      //                 child: Row(
      //                   children: [
      //                     Stack(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.fromLTRB(20.0,10.0,0,0),
      //                           child: CircleAvatar(
      //                             radius: 32.0,
      //                             backgroundImage:  AssetImage('assets/images/sakura_tree.jpeg'),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding: const EdgeInsets.fromLTRB(20,55,0,0),
      //                           child: Icon(Icons.camera_alt_rounded, color: Colors.black87),
      //                         )
      //                       ],
      //                     ),
      //
      //                     Padding(
      //                       padding: const EdgeInsets.fromLTRB(22.0,20,0,0),
      //                       child: Container(
      //                         child: Column(
      //                           children: [
      //                             Text("${controller.name[index]}"),
      //                             Text("${controller.course[index]}",style: TextStyle(fontSize: 10.0),),
      //
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           );
      //         })
      // ),
    );
  }

}