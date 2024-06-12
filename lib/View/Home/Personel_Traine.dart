import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Home/HomePage.dart';

class PersonelTrainer extends StatelessWidget {
  const PersonelTrainer({super.key});

  @override
  Widget build(BuildContext context) {
        // final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
         SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, 
      statusBarIconBrightness: Brightness.light, 
    ));
    return  Scaffold(
      body: Stack(
        children: [
         Positioned.fill(child: Image.asset('assets/images/explore.png',fit: BoxFit.cover,)),
          Positioned(
            top: 36,
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
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
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
      height: 50,
      width: width,
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
              "Nearby Gyms",
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
  


              ],
            )
          
          ),

          
          
        ],
      ),
    );
  }
}