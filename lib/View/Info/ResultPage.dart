import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/Personel_Traine.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Info/Details.dart';
import 'package:gym_rats/Model/UserInfoController.dart';
import 'package:gym_rats/View/Info/weight_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class ResultPage extends StatelessWidget {
  final UserInfoController userInfoController = Get.find();

  @override
  Widget build(BuildContext context) {
    double bmi = userInfoController.calculateBMI();
    String bmiComment = _getBMIComment(bmi); // Calculate BMI comment

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset('assets/images/explore.png', fit: BoxFit.cover),
            ),
            Positioned(
              top: 36,
              left: 19,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(()=>WeightPage());
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
              top: 0,
              left: 0,
              child: Column(
                children: [
                  SizedBox(height: 78),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(41),
                      ),
                      border: Border(
                        top: BorderSide(
                          color: Colors.red,
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
                            "BMI Result",
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
                  SizedBox(height: 100),
                  Container(
                    width: 218,
                    height: 218,
                    child: CustomPaint(
                      painter: BMICirclePainter(_getBMIPercentage(bmi)),
                      child: Center(
                        child: Text(
                          bmi.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You have $bmiComment body weight!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DetailsPage(bmi: bmi, bmiComment: bmiComment));
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
                              ),
                            ],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Details",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 47,
                    width: MediaQuery.of(context).size.width,
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
                              color: Colors.red,
                            ),
                            child: Center(child: Image.asset('assets/images/plus.png')),
                          ),
                        ),
                        SizedBox(width: 5,),
                        InkWell(
                          onTap: () {
                            Get.to(() => TrainerList());
                          },
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getBMIComment(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 25) {
      return 'Healthy';
    } else if (bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  double _getBMIPercentage(double bmi) {
    return (bmi / 100).clamp(0.0, 1.0);
  }
}

class BMICirclePainter extends CustomPainter {
  final double bmiPercentage;

  BMICirclePainter(this.bmiPercentage);

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 22;
    double radius = (size.width / 2) - strokeWidth / 2;

    Paint backgroundPaint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Paint foregroundPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      backgroundPaint,
    );

    double angle = 2 * 3.141592653589793 * bmiPercentage;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: radius),
      -3.141592653589793 / 2,
      angle,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
