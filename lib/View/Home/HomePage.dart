import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Common/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Container(
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
                  Get.to(()=> HomePage());
                  },
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
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
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Container(
                      height: 76,
                      width: 47.56,
                      child: Image.asset('assets/images/cuterobot.png',
                      fit: BoxFit.fill,),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
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
                          child: Center(
                            child: Text(
                "Let’s get started",
                style: const TextStyle(
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 13,right: 13),
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
                                padding: EdgeInsets.only(top: 5,
                                bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Text("Personal Trainer",
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
                                padding: EdgeInsets.only(top: 15,bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Spacer(),
                                    Row(
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
                                padding: EdgeInsets.only(top: 15,bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Spacer(),
                                    Text("Schedule",
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
                                padding: EdgeInsets.only(top: 10,bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Spacer(),
                                    Text("Calculate BMI",
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
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                padding: EdgeInsets.only(top: 10,bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Spacer(),
                                    Text("Workouts",
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
                                padding: EdgeInsets.only(top: 10,bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Spacer(),
                                    Text("Consultation",
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
                                padding: EdgeInsets.only(top: 10,bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Spacer(),
                                    Text("Nearby Gyms",
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
                                padding: EdgeInsets.only(top: 10,bottom: 5),
                                width: 90,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(width: 1,color: ColorsConfig.primaryColor),
                                  gradient: LinearGradient(colors: [
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
                                    Spacer(),
                                    Text("Bundle Prices",
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
              )
  


          ],
        ),
      ),
    );
  }
}