import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/Personel_Traine.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

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
                          Get.to(const HomePage());
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
                          "Nearby Gyms",
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
            top: 190,
            child: Column(
              children: [
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Container(
                        height: 93,
                        width: 101,
                        child: Image.asset('assets/images/calender.png', fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your schedule is empty',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        """There are no appointments
scheduled""",
                        style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_selectedDate != null) {
                          Get.to(() => TrainerList(), arguments: {'selectedDate': _selectedDate});
                        } else {
                          Get.snackbar('No Date Selected', 'Please select a date before booking an appointment',
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      },
                      child: Container(
                        height: 55.0,
                        width: 336.0,
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
                              "Book an appointment",
                              style: TextStyle(
                                fontSize: 18,
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
