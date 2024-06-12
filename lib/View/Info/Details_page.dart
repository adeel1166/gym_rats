import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/Model/UserInfoController.dart';
import 'package:gym_rats/View/Info/ResultPage.dart';

class DetailsPage extends StatelessWidget {
  final UserInfoController userInfoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(

        children: [
          Positioned.fill(child:Image.asset('assets/images/explore.png', fit: BoxFit.cover),
),        
           Positioned(
              top: 36,
              left: 19,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to( ResultPage());
                    },
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/ep_back.png', fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          Positioned.fill(
            top: 150,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('User Details',style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: ColorsConfig.primaryColor) ,),
                      SizedBox(height: 50,),
                      Text(
                        'Gender: ${userInfoController.gender.value}',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: ColorsConfig.primaryColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Age: ${userInfoController.age.value}',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: ColorsConfig.primaryColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Height: ${userInfoController.height.value} cm',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: ColorsConfig.primaryColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Weight: ${userInfoController.weight.value} kg',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: ColorsConfig.primaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
