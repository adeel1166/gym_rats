import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/Bundle_Price_page.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/Personel_Traine.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Info/ResultPage.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class DetailsPage extends StatelessWidget {
  final double bmi;
  final String bmiComment;

  const DetailsPage({
    Key? key,
    required this.bmi,
    required this.bmiComment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // Function to save BMI result
    void saveBMIResult() async {
      final box = GetStorage();
      await box.write('bmi', bmi);
      await box.write('bmiComment', bmiComment);
      Get.snackbar('Saved', 'BMI Result saved successfully',
          snackPosition: SnackPosition.BOTTOM);
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/explore.png', fit: BoxFit.cover),
          ),
          Positioned(
            top: 36,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(ResultPage());
                        },
                        child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('assets/images/ep_back.png', fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  width: width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(41),
                    ),
                    border: Border(
                      top: BorderSide(
                        color: ColorsConfig.redColor,
                        width: 5,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 370,
                      height: 49,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(255, 0, 0, 0.56),
                      ),
                      child: const Center(
                        child: Text(
                          "Summary",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: ColorsConfig.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 170,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                        width: 354,
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 87, 87, 87),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Your BMI",
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Colors.white),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  bmi.toStringAsFixed(2),
                                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  bmiComment,
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.red),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 40),
                        width: 354,
                        height: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 87, 87, 87),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Less than 18.5",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey),
                                ),
                                Text(
                                  "Underweight",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "18.5 to 24.9",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey),
                                ),
                                Text(
                                  "Healthy",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "25 to 29.9",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey),
                                ),
                                Text(
                                  "Overweight",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "30 or above",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey),
                                ),
                                Text(
                                  "Obese",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: saveBMIResult, // Call saveBMIResult function here
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(255, 0, 0, 0.56),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.1),
                                offset: const Offset(0, 4),
                                blurRadius: 4.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Save Results",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsConfig.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(()=>BundlePrice());
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(255, 0, 0, 0.56),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.1),
                                offset: const Offset(0, 4),
                                blurRadius: 4.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Get Program",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsConfig.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          Positioned(
            bottom: 0,
            child: Container(
              height: 47,
              width: 430,
              decoration: const BoxDecoration(
                color: Color.fromARGB(240, 197, 197, 194),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Get.to(() => const HomePage());
                    },
                    child: Container(
                      width: 45.87,
                      height: 35.66,
                      child: Image.asset('assets/images/home.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const GridDemo());
                    },
                    child: Container(
                      height: 40.89,
                      width: 40,
                      child: Image.asset('assets/images/search.png'),
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.to(() => const NutritionPage());
                    },
                    child: Container(
                      height: 35.66,
                      width: 80.27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ColorsConfig.redColor,
                      ),
                      child: Center(child: Image.asset('assets/images/plus.png')),
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.to(() => TrainerList());
                    },
                    child: Container(
                      width: 40,
                      height: 40.89,
                      child: Image.asset('assets/images/comment.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const AccountPage());
                    },
                    child: Container(
                      width: 40,
                      height: 40.89,
                      child: Image.asset('assets/images/person.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}