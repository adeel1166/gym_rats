import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Home/HomePage.dart';

class ContenPage extends StatelessWidget {
  const ContenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Center(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/explore.png'),fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: InkWell(
                    onTap: () {
                      Get.to(HomePage());
                    },
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                    ),
                  ),
                ),
                SizedBox(height: 1,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Text("Discover",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                        color: ColorsConfig.primaryColor,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Text("Select your program",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: ColorsConfig.primaryColor,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(
                      height: 346,
                      width: width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                      children:[Padding(
                        padding: const EdgeInsets.only(left: 42),
                        child: Container(
                        width: 343,
                        height: 346,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Physical Fitness",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: ColorsConfig.primaryColor
                            ),)
                          ],
                        ) ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                        ),
                                            ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 343,
                        height: 346,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Physical Fitness",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: ColorsConfig.primaryColor
                            ),)
                          ],
                        ) ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                        ),
                                            ),
                                             SizedBox(width: 15,),
                      Container(
                        width: 343,
                        height: 346,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Physical Fitness",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: ColorsConfig.primaryColor
                            ),)
                          ],
                        ) ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                        ),
                                            ),
                       SizedBox(width: 15,),
                      Container(
                        width: 343,
                        height: 346,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Physical Fitness",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: ColorsConfig.primaryColor
                            ),)
                          ],
                        ) ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                        ),
                                            ),
                       SizedBox(width: 15,),
                      Container(
                        width: 343,
                        height: 346,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Physical Fitness",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: ColorsConfig.primaryColor
                            ),)
                          ],
                        ) ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                        ),
                                            ),
                      
                      
                      
                      ]
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}