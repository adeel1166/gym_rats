import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Authentication/sign_in.dart';
import 'package:gym_rats/View/Home/age_page.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({super.key});

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
                    Get.to(SignIn());
                  },
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tell us About Yourself",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ColorsConfig.primaryColor
                  ),)
                ],
              ),
              SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text("""To give you a better experience
by knowing your gender""",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 129, 129, 128)
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/female.png'),
                        Text("Female",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: ColorsConfig.redColor,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: ColorsConfig.primaryColor
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/male.png'),
                        Text("Female",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: ColorsConfig.blackVariantColor,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                      onTap: () {
                        Get.to(AgePage());
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
    );
  }
}