

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Authentication/sign_in.dart';
import 'package:gym_rats/View/Authentication/signup.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Intro/infopage1.dart';

class getstarted extends StatelessWidget {
  const getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body:Center(
        child: Container(
          height: height,
          width: width,        
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/explore.png'),fit: BoxFit.fill)
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
                      Get.to(infopage1());
                    },
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                    ),
                  ),
                ),
              const SizedBox(
                height: 299,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 46,
                      width: 14,
                      decoration: BoxDecoration(
                         border: Border.all(width: 1,color: ColorsConfig.blackVariantColor) ,
                        borderRadius: const BorderRadius.all(Radius.circular(100),
                        ),
                        color:ColorsConfig.redColor,
                      ),
                      ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                      height: 64,
                      width: 19,
                      decoration: BoxDecoration(
                         border: Border.all(width: 1,color: ColorsConfig.blackVariantColor) ,
                        borderRadius: const BorderRadius.all(Radius.circular(100),
                        ),
                        color:ColorsConfig.redColor,
                      ),
                      ),
                    ),
                     const Padding(
                       padding: EdgeInsets.only(left: 4,right: 4),
                       child: Text("GYM RATS",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: ColorsConfig.primaryColor,
                        fontFamily: "Moul",
                        
                        
                        
                       ),),
                     ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                      height: 64,
                      width: 19,
                      decoration: BoxDecoration(
                         border: Border.all(width: 1,color: ColorsConfig.blackVariantColor) ,
                        borderRadius: const BorderRadius.all(Radius.circular(100),
                        ),
                        color:ColorsConfig.redColor,
                      ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                      height: 46,
                      width: 14,
                      decoration: BoxDecoration(
                         border: Border.all(width: 1,color: ColorsConfig.blackVariantColor) ,
                        borderRadius: const BorderRadius.all(Radius.circular(100),
                        ),
                        color:ColorsConfig.redColor,
                      ),
                      ),
                    ),
        
                ],
              ),
              const SizedBox(height: 230,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                        onTap: () {
                          Get.to(SignUp());
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
                                      Text("Sign up for free",style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor
                                      ),)
                                    ],
                                  ),
                                ),
                      ),
                      SizedBox(height: 5,),
                      
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(SignIn());
                          },
                          child: Text("Login",style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            color: ColorsConfig.primaryColor
                          ),),
                        )
                      ],),
                      SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    Get.to(()=>HomePage());
                  }, child: Text("Skip",style: TextStyle(color: const Color.fromARGB(255, 194, 191, 191),fontSize: 22,fontWeight: FontWeight.w300),))
                ],
              )
            ],
            
          ),
          
        ),
      )
    );
  }
}