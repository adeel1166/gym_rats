import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/Model/wieghtModel.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Info/hieght_page.dart';

class WeightPage extends StatelessWidget {
  const WeightPage({super.key});

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
                      Get.to(HeightPage());
                    },
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                    ),
                  ),
                ),
                SizedBox(height: 85,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("What is your Weight?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ColorsConfig.primaryColor
                  ),)
                ],),
                SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("""This help us create your
        personalized plan""",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorsConfig.primaryColor
                  ),)
                ],),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 240,
                  child:  Expanded(
              child: WeightModel(),  // Use the new widget
            ),
                ),
                SizedBox(height: 170,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                        onTap: () {
                          Get.to(AccountPage());
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
                                          
                                        )
                                      ]
                        
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Next",style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor
                                      ),)
                                    ],
                                  ),
                                ),
                      ),                    
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}