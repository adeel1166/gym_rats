import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym_rats/Model/TrainerListModel.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class TrainerList extends StatelessWidget {
  final List<Trainer> trainers = [
    Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),
    Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),Trainer(
      name: "Shieno",
      message: "Wanted to ask if you’re available for a portrait shoot next week.",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: true,
    ),
    Trainer(
      name: "John Doe",
      message: "Are you coming to the gym tomorrow?",
      imagePath: 'assets/images/Ellipse2.png',
      isActive: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
            final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body:
       Stack(
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
            color: ColorsConfig.transred, 
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
              "Trainer List",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white, 
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
                  top: 190,
                   child: ListView.builder(
                             padding: const EdgeInsets.only(left: 18, right: 18),
                             itemCount: trainers.length,
                             itemBuilder: (context, index) {
                               final trainer = trainers[index];
                               return Padding(
                                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                                 child: Column(
                                   children: [
                                    Container(
                                      width: 335,
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 10,),
                                     Container(
                                                         padding: const EdgeInsets.only(left: 10),
                                                         width: 393.15,
                                                         height: 80,
                                                         decoration: const BoxDecoration(
                                                           borderRadius: BorderRadius.only(
                                                             topLeft: Radius.circular(40),
                                                             bottomRight: Radius.circular(40),
                                                           ),
                                                           color: Color.fromARGB(226, 109, 107, 107),
                                                         ),
                                                         child: Row(
                                                           children: [
                                                             const SizedBox(width: 30),
                                                             Stack(
                                                               children: [
                                                                 Container(
                                                                   height: 60,
                                                                   width: 60,
                                                                   decoration: BoxDecoration(
                                                                     borderRadius: BorderRadius.circular(100),
                                                                     image: DecorationImage(
                                      image: AssetImage(trainer.imagePath),
                                      fit: BoxFit.cover,
                                                                     ),
                                                                   ),
                                                                 ),
                                                                 if (trainer.isActive)
                                                                   Positioned(
                                                                     top: 5,
                                                                     right: 5,
                                                                     child: Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        color: ColorsConfig.green,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.white, width: 1),
                                      ),
                                                                     ),
                                                                   ),
                                                               ],
                                                             ),
                                                             const SizedBox(width: 30),
                                                             Expanded(
                                                               child: Column(
                                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                                 children: [
                                                                   Text(
                                                                     trainer.name,
                                                                     style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                                                     ),
                                                                     overflow: TextOverflow.ellipsis,
                                                                   ),
                                                                   Text(
                                                                     trainer.message,
                                                                     style: const TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                                                     ),
                                                                     overflow: TextOverflow.ellipsis,
                                                                     maxLines: 2,
                                                                   ),
                                                                 ],
                                                               ),
                                                             ),
                                                           ],
                                                         ),
                                     ),
                                     
                                   ],
                                 ),
                               );
                             },
                   ),
                 ),
                 Positioned(bottom: 0,child: 
                 Container(
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
                    Get.to(()=> HomePage());
                  },
                  child: Container(
                    width: 45.87,
                    height: 35.66,
                    child: Image.asset('assets/images/home.png'),
                  ),
                ),
                InkWell(
                  onTap: () {
                  Get.to(()=> GridDemo());
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
                        Get.to(()=> NutritionPage());
                        },
                  child: Container(
                    height: 35.66,
                    width: 80.27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red
                    ),
                    child: Center(child: Image.asset('assets/images/plus.png')),
                  ),
                ),
                SizedBox(width: 5,),
                InkWell(
                  onTap: () {
                  Get.to(()=> TrainerList());
                  },
                  child: Container(
                    width: 40,
                    height: 40.89,
                    child: Image.asset('assets/images/comment.png'),
                  ),
                ),
                InkWell(
                  onTap: () {
                  Get.to(()=> AccountPage());
                  },
                  child: Container(
                    width: 40,
                    height: 40.89,
                    child: Image.asset('assets/images/person.png'),
                  ),
                )

              ],
            ),
          ))
               ],
       ),
    );
  }
}