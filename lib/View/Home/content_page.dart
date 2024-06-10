import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/account_page.dart';

class ContenPage extends StatelessWidget {
  const ContenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;

        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make status bar transparent
      statusBarIconBrightness: Brightness.light, // Use light icons for the status bar
    ));

    
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          
          Positioned.fill(child: Image.asset('assets/images/explore.png',fit: BoxFit.cover,)),
          Positioned(
            top: 36,
            left: 19,
            child: 
            Row(
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
            )
          
          ),
          Positioned.fill(top: 74,child: 
          Padding(
            padding: const EdgeInsets.only(bottom: 47),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                const Padding(
                      padding: EdgeInsets.only(left: 16),
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
                    const SizedBox(height: 10,),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
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
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(
                          height: 346,
                          width: width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                          children:[Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Container(
                            width: 343,
                            height: 346,
                            child:const Column(
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
                              image: const DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                            ),
                                                ),
                          ),
                          const SizedBox(width: 15,),
                          Container(
                            width: 343,
                            height: 346,
                            child:const Column(
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
                              image: const DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                            ),
                                                ),
                                                 const SizedBox(width: 15,),
                          Container(
                            width: 343,
                            height: 346,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                            ),
                            child:const Column(
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
                                                ),
                           const SizedBox(width: 15,),
                          Container(
                            width: 343,
                            height: 346,
                            child:const Column(
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
                              image: const DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                            ),
                                                ),
                           const SizedBox(width: 15,),
                          Container(
                            width: 343,
                            height: 346,
                            child:const Column(
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
                              image: const DecorationImage(image: AssetImage('assets/images/Jogging.png'))
                            ),
                                                ),
                          
                          
                          
                          ]
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text("Browse all",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: ColorsConfig.primaryColor,
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1649,
                          width: 349,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 5.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 6.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 5.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 6.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10,),
                               Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 5.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 6.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10,),
                               Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 5.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 6.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10,),
                               Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 5.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: 170,
                                      height: 310,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset('assets/images/image 6.png',fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10,),
                              
                            ],
                          ),
                        )
                      ],
                    ),
            
              ],
            ),
          )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: 
            Container(
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
                    Get.to(()=> const HomePage());
                  },
                  child: Container(
                    width: 45.87,
                    height: 35.66,
                    child: Image.asset('assets/images/home.png'),
                  ),
                ),
                InkWell(
                  onTap: () {
                  Get.to(()=> const GridDemo());
                  },
                  child: Container(
                    height: 40.89,
                    width: 40,
                    child: Image.asset('assets/images/search.png'),
                  ),
                ),
                 const SizedBox(width: 5,),

                InkWell(
                  // onTap: () {
                  // Get.to(()=> HomePage());
                  // },
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
                const SizedBox(width: 5,),
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
                  Get.to(()=> const AccountPage());
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
            )
        ],
      ),
    );
  }
}