import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/ExploreScreen.dart';

class infopage1 extends StatelessWidget {
  const infopage1({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body:ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [ Container(
          height: height,
          width: width,        
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/explore.png'),fit: BoxFit.fill)
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 36,),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: InkWell(
                  onTap: () {
                    Get.to(Explore());
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    child: Image.asset("assets/images/ep_back.png",height: 35,width: 35,),
                    ),
                ),
              ),
              SizedBox(height: 19,),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("""Welcome To The Gym Rats
                   Family""",
                 style: TextStyle(
                  fontSize: 25.74,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  
                 ),),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 14,right: 14),
                child: Container(
                  width: width,
                  child: Expanded(
                    child: Text(
                      "where we're dedicated to helping you to get the physique of your dreams. With our comprehensive gym application, you're not just focusing on a fitness journey–you're joining a community of like-minded  individuals who share your passion for strength and health."
                           ,
                    style: TextStyle(
                      color: ColorsConfig.primaryColor,
                      fontSize: 21,
                      
                      
                    ),
                                    
                    
                                        ),
                  ),
                ),
              )
            ],
          ) ,
        ),
        ]
      )
      
    );
  }
}