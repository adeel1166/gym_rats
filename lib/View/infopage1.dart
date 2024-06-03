

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/ExploreScreen.dart';
import 'package:gym_rats/View/getstarted.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class infopage1 extends StatefulWidget {
  const infopage1({super.key});

  @override
  State<infopage1> createState() => _infopage1State();
}

class _infopage1State extends State<infopage1> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
       final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children:[ Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/explore.png'),fit: BoxFit.fill),
            
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: InkWell(
                  onTap: () {
                    Get.to(Explore());
                  },
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("Welcome To The Gym Rats Family",
                      style: TextStyle(
                        fontSize: 25.74,
                        fontWeight: FontWeight.w900,
                        color: ColorsConfig.primaryColor,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              
        
              Expanded(child: 
              PageView(
                controller: _pageController,
                children: [
                  Container(
                    child: Column(
                      children: [
                         const Padding(
                padding: EdgeInsets.only(left: 14,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("where we're dedicated to helping you to get the physique of your dreams. With our comprehensive gym application, you're not just focusing on a fitness journey–you're joining a community of like-minded  individuals who share your passion for strength and health.",
                      style: TextStyle(
                        fontSize: 18,
                        height: 0.8,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.secondaryVariantColor,
                        fontFamily: 'Economica'
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              InkWell(
                
                onTap: (
                  
                ) {
                  print("object");
              
                },
                child: SizedBox(
                  height: 423,
                  width: width,
                  child: Image.asset('assets/images/info1.png',fit: BoxFit.cover,),
                    ),
              ),
              
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                         const Padding(
                padding: EdgeInsets.only(left: 14,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("From expert-led personal training sessions to meticulously crafted diet recommendations, and access to a diverse range of herbal, chemical, and natural nutrition supplements, our app empowers you to achieve your fitness goals efficiently and sustainably.",
                      style: TextStyle(
                        fontSize: 18,
                        height: 0.8,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.secondaryVariantColor,
                        fontFamily: 'Economica'
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              InkWell(
                
                onTap: (
                  
                ) {
                  print("object");
              
                },
                child: SizedBox(
                  height: 423,
                  width: width,
                  child: Image.asset('assets/images/info2.png',fit: BoxFit.cover,),
                    ),
              ),
              
                      ],
                    ),
                  ),
              
                  Container(
                    child: Column(
                      children: [
                         const Padding(
                padding: EdgeInsets.only(left: 14,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("Experience the ultimate in personalized training, meticulously crafted diet plans, and a curated selection of herbal, chemical, and natural nutrition supplements designed to optimize your performance and fuel your progress.",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.secondaryVariantColor,
                        fontFamily: 'Economica'
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              InkWell(
                
                onTap: (
                  
                ) {
                  print("object");
              
                },
                child: SizedBox(
                  height: 423,
                  width: width,
                  child: Image.asset('assets/images/info3.png',fit: BoxFit.cover,),
                    ),
              ),
              
                      ],
                    ),
                  ),
              
                  Container(
                    child: Column(
                      children: [
                         const Padding(
                padding: EdgeInsets.only(left: 14,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("Our platform seamlessly integrates expert guidance, advanced tracking features, and a supportive community, empowering you to surpass your fitness aspirations with confidence. With tailored solutions for every goal, embark on your journey to peak health and vitality today.  ",
                      style: TextStyle(
                        fontSize: 18,
                        height: 0.8,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor,
              
                         decorationColor: ColorsConfig.primaryColor,
                        fontFamily: 'Economica'
                      ),
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              InkWell(
                
                onTap: (
                  
                ) {
                  print("object");
              
                },
                child: SizedBox(
                  height: 423,
                  width: width,
                  child: Image.asset('assets/images/info4.png',fit: BoxFit.cover,),
                    ),
              ),
              SizedBox(height: 30,),
              
              
                      Text("If this is what searching for, so hit the botton below and start you fitness journey with us.",
                                          style: TextStyle(
                      fontSize: 18,
                      height: 0.8,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                      
                       decorationColor: ColorsConfig.primaryColor,
                      fontFamily: 'Economica'
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          ),
                      
                    
                      ],
                      
                    ),
                    
                  ),
                ],
              )
              )
              ,
              
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  
                  effect: ExpandingDotsEffect(
                    
                    dotHeight: 14.0,
                    dotWidth: 14.0,
                    spacing: 8.0,
                    radius: 20,
                    
                    dotColor: ColorsConfig.primaryColor,
                    activeDotColor: ColorsConfig.redColor,
                  ),
                ),
        
              ],),
              SizedBox(height: 25,),
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(getstarted());
                                    },
                  child: Container(
                            height: 55.0,
                             width: 336.0,
                              decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(255, 0, 0, 0.7),
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
                                Text("Get started",style: TextStyle(
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
                      SizedBox(height: 20,)
        
        
            ],
          ),
        
        ),
        ]
      ),

    );
  }
}