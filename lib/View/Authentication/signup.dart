import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Authentication/sign_in.dart';
import 'package:gym_rats/View/Intro/getstarted.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    

    final _usernameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();

    // Define FocusNodes for text fields
    final _usernameFocusNode = FocusNode();
    final _emailFocusNode = FocusNode();
    final _passwordFocusNode = FocusNode();
    final _confirmPasswordFocusNode = FocusNode();
    

    void _signUp() {
      // Request focus to trigger validation without opening the keyboard
      _usernameFocusNode.unfocus();
      _emailFocusNode.unfocus();
      _passwordFocusNode.unfocus();
      _confirmPasswordFocusNode.unfocus();
      

      
    }

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
              const SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: InkWell(
                  onTap: () {
                    Get.to(() => getstarted());
                  },
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset('assets/images/ep_back.png', fit: BoxFit.cover,),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: ColorsConfig.primaryColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.only(left: 47),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "User Name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      controller: _usernameController,
                      focusNode: _usernameFocusNode,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "User name",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(159, 143, 143, 138),
                          height: 1,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(left: 47),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      controller: _emailController,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email address",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(159, 143, 143, 138),
                          height: 1,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(left: 47),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      controller: _passwordController,
                      obscureText: true,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 22,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(left: 47),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorsConfig.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      controller: _confirmPasswordController,
                      obscureText: true,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 22,
                          color: Color.fromARGB(159, 143, 143, 138),
                        ),
                        hintText: "Confirm password",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(159, 143, 143, 138),
                          height: 1,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _signUp,
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
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorsConfig.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              
              SizedBox(height: 20,),
              Padding(
              padding: const EdgeInsets.only(left: 47),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 1,
                    width: 80,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(159, 180, 180, 177),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Or sign up with",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorsConfig.primaryColor,
                      height: .5,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 1,
                    width: 80,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(159, 180, 180, 177),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        child: Image.asset('assets/images/1.png', fit: BoxFit.fill),
                      ),
                      SizedBox(
                        height: 55,
                        width: 105,
                        child: Image.asset('assets/images/2.png', fit: BoxFit.fill),
                      ),
                      SizedBox(
                        height: 55,
                        width: 105,
                        child: Image.asset('assets/images/3.png', fit: BoxFit.fill),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account!",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: ColorsConfig.primaryColor,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Get.to(SignIn());
                  },
                  child: const Text(
                    "Login",
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
            ],
          ),
        ),
      ),
    );
  }
}
