import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Authentication/sign_in.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpandSuport extends StatelessWidget {
  const HelpandSuport({super.key});

  static const platform = MethodChannel('com.example.your_app_name/url_launcher');

  Future<void> _launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    debugPrint("Failed to launch URL: '$url'.");
  }
}

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
                    Get.to(AccountPage());
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
              const SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 129,
                    width: 129,
                    child: Image.asset('assets/images/Call female.png'),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        """Hello, this is Admin.
How can I help you?""",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: ColorsConfig.primaryColor,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                     onTap: () => _launchURL('https://wa.link/mopf87'),
                    child: Container(
                      height: 58.0,
                      width: 260.0,
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
                          "Click Here to Contact us",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: ColorsConfig.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Or you can reach out us through",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "following Email ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () => _launchURL('mailto:mahfujur@gmail.com'),
                      child: Text(
                        "mahfujur@gmail.com",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 70),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Group 2.png'),
                  const SizedBox(width: 10),
                  const Text(
                    """You can order nutrition supplements or
other items or buy a membership using
this chat""",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: ColorsConfig.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}
