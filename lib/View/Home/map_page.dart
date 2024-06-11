import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Home/HomePage.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {


  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make status bar transparent
      statusBarIconBrightness: Brightness.light, // Use light icons for the status bar
    ));
    return Scaffold(
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
          
          Positioned.fill(
            top: 158,
            left: 24,
            right: 24,
            child: Column(
              children: [
                
                Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:304 ,
                  width: 363,
                  decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage('assets/images/Frame 3867.png'),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ],
            ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Container(
                      width: 363,
                      height: 378.41,
                      padding: const EdgeInsets.only(top: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        color: Colors.white.withOpacity(0),
                      ),
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Container(
                            width: width,
                            height: 54.17,
                            margin: const EdgeInsets.symmetric(vertical: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50 ),
                              color: Colors.grey[300],
                            ),
                            child: Center(
                              child: Text(
                                'Item ${index + 1}',
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}