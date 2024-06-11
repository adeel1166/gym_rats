import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/Model/UserInfoController.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Info/Details_page.dart';

class ResultPage extends StatelessWidget {
  final UserInfoController userInfoController = Get.find();

  @override
  Widget build(BuildContext context) {
    double bmi = userInfoController.calculateBMI();

    // Map BMI to a percentage for the circular progress indicator
    double bmiPercentage = (bmi / 100).clamp(0.0, 1.0);
    final width = MediaQuery.of(context).size.width;

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
                      Get.to(const HomePage());
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
                  SizedBox(height: 100),
                  Container(
                    width: 218,
                    height: 218,
                    child: CustomPaint(
                      painter: BMICirclePainter(bmiPercentage),
                      child: Center(
                        child: Text(
                          bmi.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: ColorsConfig.primaryColor,
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
                        "You have Obese body weight!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: ColorsConfig.primaryColor,
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
                          Get.to(() => DetailsPage());
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
                                  color: ColorsConfig.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
