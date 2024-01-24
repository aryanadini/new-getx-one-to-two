import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home:First() ,
    );
  }
}
class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Page"),
        centerTitle: true,
        backgroundColor: Colors.white,
        
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              child: Text("Go to next screen"),
              onPressed: () {

                //navigate to Second screen
                Get.to(Second());
              }
          ),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
     body: Center(
       child: Container(
         child: ElevatedButton(
             child: Text("Go to next screen"),
             onPressed:null
           // () {
             //
             //   //navigate to Second screen
             //   Get.to(First());
             // }
         ),
       ),
     ),
    );
  }
}
