import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gym_rats/Model/UserInfoController.dart';
import 'package:gym_rats/View/Intro/ExploreScreen.dart';

Future<void> main() async {
 await GetStorage.init();
 Get.put(UserInfoController());
  runApp(MyApp());
  }

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