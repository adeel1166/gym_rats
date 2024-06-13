import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Authentication/ForgotPassword.dart';

class ConfirmationCode extends StatelessWidget {
  const ConfirmationCode({super.key});

  @override
  Widget build(BuildContext context) {
        final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/explore.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: InkWell(
                  onTap: () {
                    Get.to(ForgotPassword());
                  },
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/ep_back.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 61),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Confirmation",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Code sent.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 196, 195, 195),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 200),
              const Padding(
                padding: EdgeInsets.only(left: 47,right: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Enter the code sent to your email below to reset your password .",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 55,
                    width: 336,
                    decoration: BoxDecoration(
                      color: ColorsConfig.secondaryVariantColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 30),
                        hintText: "Enter Code",
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
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("code was sent to your email",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                                    
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(" mohsen1234@gmail.com",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                                    
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 60,),
               Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("This code expires in 5 Minutes",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                                    
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verify code",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: ColorsConfig.primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn’t receive email ?",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: ColorsConfig.primaryColor,
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                    },
                    child: const Text(
                      "Resend",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorsConfig.primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}