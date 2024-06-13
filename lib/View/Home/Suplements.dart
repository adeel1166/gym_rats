import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/Personel_Traine.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class Suplements extends StatelessWidget {
  const Suplements({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold
    (
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
                          "Suplements Markertplace ",
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
          Positioned.fill(top: 135,child: 
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 123,
                  height: 31,
                  decoration: BoxDecoration(
                                      color: Colors.grey,
                  borderRadius: BorderRadius.circular(50)
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white
                      ),),
                    ],
                  ),
                )
              ],),
              SizedBox(height: 5,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/teenyicons_down-solid.png')
              ],),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      width: 354,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 87, 87, 87)
                      ),
                      child: Column(
                        
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                    width: 155,
                    height: 23,
                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 122, 122, 122),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Chemical Suplements",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),),
                      ],
                    ),
                                    )
                          ],),
                          SizedBox(
                            height: 155,
                            width: 310,
                            child: Image.asset('assets/images/Untitled-1 1.png'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      width: 354,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 87, 87, 87)
                      ),
                      child: Column(
                        
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                    width: 155,
                    height: 23,
                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 122, 122, 122),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Herbal Suplements",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),),
                      ],
                    ),
                                    )
                          ],),
                          SizedBox(
                            height: 155,
                            width: 310,
                            child: Image.asset('assets/images/Untitled-1dssd 1.png'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      width: 354,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 87, 87, 87)
                      ),
                      child: Column(
                        
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                    width: 155,
                    height: 23,
                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 122, 122, 122),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Natural Suplements",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),),
                      ],
                    ),
                                    )
                          ],),
                          SizedBox(
                            height: 155,
                            width: 310,
                            child: Image.asset('assets/images/pngwing 6.png'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

            ],
           )
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