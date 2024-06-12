import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class BundlePrice extends StatelessWidget {
  const BundlePrice({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Stack(
        children: [
         Positioned.fill(child: Image.asset('assets/images/explore.png',fit: BoxFit.cover,)),
          Positioned(
            top: 36,
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        InkWell(
                          onTap: () {
                            Get.to(const HomePage());
                          },
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                          ),
                        ),
                        
                  
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
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
              "Bundles",
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
            )
          
          ),
          
           Positioned.fill(
            top: 158,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                                    """Upgrade Plan
to get your ideal body goal""",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsConfig.primaryColor, 
                                    ),
                                    textAlign:TextAlign.center,
                                    maxLines: 2,
                                  ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                                      """99% of Gym Rats user recommended you to upgrade plan!""",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: ColorsConfig.primaryColor, 
                                      ),
                                      textAlign:TextAlign.center,
                                      maxLines: 2,
                                    ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 358,
                      height: 178,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(249, 71, 71, 70)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                      child: Text(
                                    "Beginner Plan",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsConfig.primaryColor, 
                                    ),
                                    textAlign:TextAlign.center,
                                    maxLines: 2,
                                  ),
                    ),
                            ],
                          ),
                          SizedBox(height: 25,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                      child: Text(
                                    "USD 39 /month",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsConfig.primaryColor, 
                                    ),
                                    textAlign:TextAlign.center,
                                    maxLines: 2,
                                  ),
                    ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                      child: Text(
                                    "Recommended for Beginners",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsConfig.redColor, 
                                    ),
                                    textAlign:TextAlign.center,
                                    maxLines: 2,
                                  ),
                    ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 358,
                      height: 178,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(249, 71, 71, 70)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                      child: Text(
                                    "Pro Plan",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsConfig.primaryColor, 
                                    ),
                                    textAlign:TextAlign.center,
                                    maxLines: 2,
                                  ),
                    ),
                            ],
                          ),
                          SizedBox(height: 25,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                      child: Text(
                                    "USD 199 /month",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsConfig.primaryColor, 
                                    ),
                                    textAlign:TextAlign.center,
                                    maxLines: 2,
                                  ),
                    ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                      child: Text(
                                    "Recommended for Pro",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsConfig.redColor, 
                                    ),
                                    textAlign:TextAlign.center,
                                    maxLines: 2,
                                  ),
                    ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      
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
                            "Next",
                            style: TextStyle(
                              fontSize: 21,
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
              Spacer(),
              Container(
            height: 47,
            width: 430,
            decoration: BoxDecoration(
              color: Color.fromARGB(240, 197, 197, 194),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Get.to(()=> HomePage());
                  },
                  child: Container(
                    width: 45.87,
                    height: 35.66,
                    child: Image.asset('assets/images/home.png'),
                  ),
                ),
                InkWell(
                  onTap: () {
                  Get.to(()=> GridDemo());
                  },
                  child: Container(
                    height: 40.89,
                    width: 40,
                    child: Image.asset('assets/images/search.png'),
                  ),
                ),
                 SizedBox(width: 5,),

                InkWell(
                  onTap: () {
                        Get.to(()=> NutritionPage());
                        },
                  child: Container(
                    height: 35.66,
                    width: 80.27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: ColorsConfig.redColor
                    ),
                    child: Center(child: Image.asset('assets/images/plus.png')),
                  ),
                ),
                SizedBox(width: 5,),
                InkWell(
                  // onTap: () {
                  // Get.to(()=> HomePage());
                  // },
                  child: Container(
                    width: 40,
                    height: 40.89,
                    child: Image.asset('assets/images/comment.png'),
                  ),
                ),
                InkWell(
                  onTap: () {
                  Get.to(()=> AccountPage());
                  },
                  child: Container(
                    width: 40,
                    height: 40.89,
                    child: Image.asset('assets/images/person.png'),
                  ),
                )

              ],
            ),
          )
                
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}