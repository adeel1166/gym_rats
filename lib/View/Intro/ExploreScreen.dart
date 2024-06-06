import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Intro/infopage1.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

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
            children: [
              const SizedBox(
                height: 370,
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
              const SizedBox(height: 315,),
              InkWell(
                onTap: (){Get.to(infopage1());},
                child: Container(
                  height: 56,
                  width: 336,
                  decoration: BoxDecoration(
                    color: ColorsConfig.primaryColor,
                    border: Border.all(width: 1,color: ColorsConfig.blackVariantColor),
                    borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Explore",style: TextStyle(fontWeight: FontWeight.w700,
                      fontSize: 21,
                      color: ColorsConfig.blackVariantColor,
                      
                      ),),
                    ],
                  ),
                ),
              ),
              
            ],
            
          ),
          
        ),
      )
    );
  }
}