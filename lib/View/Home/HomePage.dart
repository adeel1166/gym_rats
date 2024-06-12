import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/Model/chat_bot.dart';
import 'package:gym_rats/View/Home/Bundle_Price_page.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Home/map_page.dart';
import 'package:gym_rats/View/Info/gender_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    late final PageController _pageController;

    bool showChatBot = false;

  void toggleChatBot() {
    setState(() {
      showChatBot = !showChatBot;
    });
  }


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
    // final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;

        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make status bar transparent
      statusBarIconBrightness: Brightness.light, // Use light icons for the status bar
    ));
    
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(child: 
          Image.asset('assets/images/explore.png',fit: BoxFit.cover,)),
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
          
          
          Positioned.fill(

            top: 71,

            

            child: 
          Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(left: 45),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello Mohsen,",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: ColorsConfig.primaryColor,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Good Morning",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                            color: ColorsConfig.primaryColor,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 20),
                                child: Container(
                                  height: 67,
                                  width: 67,
                                  child: Image.asset('assets/images/Ellipse.png',fit: BoxFit.fill,),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 170,),
                    
                    
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Monday, 13 May 2024",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: ColorsConfig.primaryColor
                        ),)
                      ],
                    ),
                    Center(
                      child: Container(
                            height: 50,
                            width: 449,
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
                      "Let’s get started",
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20,bottom: 20,left: 13,right: 13),
                        height: 255,
                        width: 449,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                      
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 5,
                                      bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('assets/images/PersonalTrainer.png'),
                                          const Text("Personal Trainer",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsConfig.primaryColor,
                                            
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(()=>NutritionPage());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 15,bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image.asset('assets/images/medical-icon_i-nutrition.png'),
                                            ],
                                          ),
                                          const Spacer(),
                                          const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("Nutrition",
                                              style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w700,
                                                color: ColorsConfig.primaryColor,
                                                
                                              ),),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                      
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 15,bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/Vector.png'),
                                          const Spacer(),
                                          const Text("Schedule",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsConfig.primaryColor,
                                            
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(()=>GenderPage());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 10,bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/scale.png'),
                                          const Spacer(),
                                          const Text("Calculate BMI",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsConfig.primaryColor,
                                            
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
            
                                
            
                                
            
                                
                                
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(()=>const GridDemo());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 10,bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/Treadmill.png'),
                                          const Spacer(),
                                          const Text("Workouts",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsConfig.primaryColor,
                                            
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                      
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 10,bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/Barbell.png'),
                                          const Spacer(),
                                          const Text("Consultation",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsConfig.primaryColor,
                                            
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                    Get.to(()=> CustomScreen());
                                        },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 10,bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/map.png'),
                                          const Spacer(),
                                          const Text("Nearby Gyms",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsConfig.primaryColor,
                                            
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: InkWell(
                                    onTap: () {
                                    Get.to(()=>  BundlePrice());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 10,bottom: 5),
                                      width: 90,
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 53, 51, 51),
                                          Color.fromARGB(255, 87, 87, 86),
                                          Color.fromARGB(255, 53, 51, 51),
                                        ],
                                        begin: Alignment.topCenter,
                                        end:  Alignment.bottomCenter
                                        )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/arcticons.png'),
                                          const Spacer(),
                                          const Text("Bundle Prices",
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsConfig.primaryColor,
                                            
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
            
                                
            
                                
            
                                
                                
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 0,),
                    Expanded(child: 
                    PageView(
                      controller: _pageController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 393.15,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: ColorsConfig.transred,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text("Active Trainer",style: 
                                            TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: ColorsConfig.primaryColor
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                   
                                  ],
                                ),
                                 const SizedBox(width: 10,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset('assets/images/Ellipse2.png'),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                const Column(mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shieno",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: ColorsConfig.primaryColor
                                      ),
                                    ),
                                    Text(
                                      """Wanted to ask if you’re available for a
portrait shoot next week.""",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w400,
                                        color: ColorsConfig.primaryColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 393.15,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: ColorsConfig.transred,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text("Active Trainer",style: 
                                            TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: ColorsConfig.primaryColor
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                   
                                  ],
                                ),
                                 const SizedBox(width: 10,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset('assets/images/Ellipse2.png'),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                const Column(mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shieno",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: ColorsConfig.primaryColor
                                      ),
                                    ),
                                    Text(
                                      """Wanted to ask if you’re available for a
portrait shoot next week.""",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w400,
                                        color: ColorsConfig.primaryColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 393.15,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: ColorsConfig.transred,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text("Active Trainer",style: 
                                            TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: ColorsConfig.primaryColor
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                   
                                  ],
                                ),
                                 const SizedBox(width: 10,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset('assets/images/Ellipse2.png'),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                const Column(mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shieno",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: ColorsConfig.primaryColor
                                      ),
                                    ),
                                    Text(
                                      """Wanted to ask if you’re available for a
portrait shoot next week.""",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w400,
                                        color: ColorsConfig.primaryColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 393.15,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: ColorsConfig.transred,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text("Active Trainer",style: 
                                            TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700,
                                              color: ColorsConfig.primaryColor
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                   
                                  ],
                                ),
                                 const SizedBox(width: 10,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset('assets/images/Ellipse2.png'),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                const Column(mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shieno",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: ColorsConfig.primaryColor
                                      ),
                                    ),
                                    Text(
                                      """Wanted to ask if you’re available for a
portrait shoot next week.""",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w400,
                                        color: ColorsConfig.primaryColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                    const SizedBox(height: 30,),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 4,
                        
                        effect: const ExpandingDotsEffect(
                          
                          dotHeight: 14.0,
                          dotWidth: 14.0,
                          spacing: 8.0,
                          radius: 20,
                          
                          dotColor: ColorsConfig.primaryColor,
                          activeDotColor: ColorsConfig.redColor,
                        ),
                      ),
              
                    ],),
                    const SizedBox(height: 30,),
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
                    
              
            
            
                ],
              ),
          ),
          Positioned.fill(bottom: 400,child: 
          Row(
                  children: [
                    GestureDetector(
                                  onTap: toggleChatBot,
                                  child: Container(
                                    child: Image.asset('assets/images/cuterobot.png'),
                                  ),
                                ),
                    if (showChatBot)
            ChatBot(onClose: toggleChatBot),
                  ],
                ),),
        ],
        
      ),
    );
  }
}