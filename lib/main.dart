import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Model/UserInfoController.dart';
import 'package:gym_rats/View/Intro/ExploreScreen.dart';

void main(){
Get.put(UserInfoController()); // Register the controller here
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "GYM RATS",
      home: Explore(),
    );
  }
}