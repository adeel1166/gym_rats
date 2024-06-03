import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Authentication/sign_in.dart';
import 'package:gym_rats/View/Intro/ExploreScreen.dart';
import 'package:gym_rats/View/Intro/getstarted.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                      Get.to(getstarted());
                    },
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/ep_back.png',fit: BoxFit.cover,),
                    ),
                  ),
                ),
                const SizedBox(height: 60,),
                const Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign Up",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ColorsConfig.primaryColor,
                  ),)
                ],),
                const SizedBox(height: 30,),
        
                const Padding(
                  padding: EdgeInsets.only(left: 47),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("User Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                    ),)
                  ],),
                ),
                const SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 55,
                      width: 336,
                      decoration: BoxDecoration(
                        color: ColorsConfig.secondaryVariantColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 30),
                          
                          hintText: "User name",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(159, 143, 143, 138),
                            height: 1,
                           ),
                           
                           
                           
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),

               const Padding(
                  padding: EdgeInsets.only(left: 47),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Email",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                    ),)
                  ],),
                ),
                const SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 55,
                      width: 336,
                      decoration: BoxDecoration(
                        color: ColorsConfig.secondaryVariantColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 30),
                          
                          hintText: "Email address",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(159, 143, 143, 138),
                            height: 1,
                           ),
                           
                           
                           
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),

               const Padding(
                  padding: EdgeInsets.only(left: 47),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                    ),)
                  ],),
                ),
                const SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 55,
                      width: 336,
                      decoration: BoxDecoration(
                        color: ColorsConfig.secondaryVariantColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 30),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined,
                          size: 22,opticalSize: 22,
                          
                          color: Color.fromARGB(159, 143, 143, 138),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(159, 143, 143, 138),
                            height: 1,
                           ),
                           
                           
                           
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),

               const Padding(
                  padding: EdgeInsets.only(left: 47),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Confirm password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                    ),)
                  ],),
                ),
                const SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 55,
                      width: 336,
                      decoration: BoxDecoration(
                        color: ColorsConfig.secondaryVariantColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                          decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 30),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined,
                          size: 22,opticalSize: 20,
                          
                          color: Color.fromARGB(159, 143, 143, 138),
                          ),
                          hintText: "Confirm password",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(159, 143, 143, 138),
                            height: .8,
                           ),
                           
                           
                           
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                 Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                      onTap: () {
                        
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
                                    Text("Sign up",style: TextStyle(
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
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 1,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(159, 180, 180, 177),
                  ),
                ),
                SizedBox(width: 20,),
                Text("Or signup with",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: ColorsConfig.primaryColor,
                  height: .5
                ),),
              
                SizedBox(width: 20,),
              
              
                Container(
                  height: 1,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(159, 180, 180, 177),
                  ),
                )
              
              ],),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 335,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 55,
                      width: 105,
                      child: Image.asset('assets/images/1.png',fit: BoxFit.fill,),
                    ),
                    SizedBox(
                      height: 55,
                      width: 105,
                      child: Image.asset('assets/images/2.png',fit: BoxFit.fill,),
                    ),
                    SizedBox(
                      height: 55,
                      width: 105,
                      child: Image.asset('assets/images/3.png',fit: BoxFit.fill,),
                    ),
                  ],
                ),
              )
            ],),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.to(SignIn());
                },
                child: Text("Already have an account! Login",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: ColorsConfig.primaryColor,
                ),),
              )
            ],)
            ],
          ),
        ),
      ),
    );
  }
}