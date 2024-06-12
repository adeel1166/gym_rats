import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevents the keyboard from resizing the screen
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/explore.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 36,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const AccountPage());
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
                    ],
                  ),
                ),
                const SizedBox(height: 10),
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
                          "Profile",
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
            ),
          ),
          Positioned.fill(
            top: 180,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: Container(
                          height: 130,
                          width: 130,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: _image == null
                                          ? Image.asset(
                                              'assets/images/Ellipse.png',
                                              fit: BoxFit.cover,
                                            )
                                          : ClipOval(
                                              child: Image.file(
                                                _image!,
                                                fit: BoxFit.cover,
                                                width: 90,
                                                height: 90,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned.fill(
                                bottom: 0,
                                top: 45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: _pickImage,
                                      child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/images/Group 289.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mohsen Samadi",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: ColorsConfig.primaryColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  const Padding(
                    padding: EdgeInsets.only(left: 47),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: ColorsConfig.primaryColor,
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
                            hintText: "Mohsen Samadi",
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
                            hintText: "MohsenSamadi@gmail.com",
                            hintStyle: TextStyle(
                              fontSize: 14,
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
                            hintText: "********",
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
                  
                  
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 47,
              width: 430,
              decoration: BoxDecoration(
                color: Color.fromARGB(240, 197, 197, 194),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Get.to(() => HomePage());
                    },
                    child: Container(
                      width: 45.87,
                      height: 35.66,
                      child: Image.asset('assets/images/home.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => GridDemo());
                    },
                    child: Container(
                      height: 40.89,
                      width: 40,
                      child: Image.asset('assets/images/search.png'),
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: () {
                      Get.to(() => NutritionPage());
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
                  SizedBox(width: 5,),
                  InkWell(
                    child: Container(
                      width: 40,
                      height: 40.89,
                      child: Image.asset('assets/images/comment.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => AccountPage());
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
          ),
        ],
      ),
    );
  }
}
