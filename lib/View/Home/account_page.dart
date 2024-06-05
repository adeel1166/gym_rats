import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Authentication/sign_in.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

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
                    Get.to(const SignIn());
                  },
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                height: 50,
                width: 449,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(41)),
                  border: Border(
                    top: BorderSide(
                      color: ColorsConfig.redColor,
                      width: 5,
                    ),
                  )
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
                        topRight: Radius.circular(5)
                      ),
                      color: Color.fromRGBO(255, 0, 0, 0.56),
                    ),
                    child: const Center(
                      child: Text("Account",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor
                      ),),
                    ),
                  ),
                ),
              )
          ,
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                
              ),
               child: Image.asset('assets/images/Ellipse.png',
              fit: BoxFit.cover,),
            )
          ],),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("26 yo",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorsConfig.primaryColor
              ),),
              SizedBox(width: 5,),
              Container(
               height: 1.0,
                width: 17.0,
                color: const Color.fromARGB(255, 131, 129, 129),
                 ),
                               SizedBox(width: 5,),

              Text("180 cm",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorsConfig.primaryColor
              ),),
               SizedBox(width: 5,),
              Container(
               height: 1.0,
                width: 17.0,
                color: const Color.fromARGB(255, 131, 129, 129),
                 ),
                               SizedBox(width: 5,),
              Text("75 kg",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorsConfig.primaryColor
              ),),
              SizedBox(width: 5,),
              
              
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(13),
                width: 393.15,
                height: 82.36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    
                  ),
                  color: ColorsConfig.transred,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/smile.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Reminder",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: ColorsConfig.primaryColor
                        ),),
                        SizedBox(height: 2,),
                        Text("Check your diet Plan and stay updated",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorsConfig.primaryColor
                        ),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 375,
                height: 446,
              )
            ],
          )
          ],
        ),
      ),
    );
  }
}