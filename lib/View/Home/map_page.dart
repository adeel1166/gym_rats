import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gym_rats/Common/colors.dart';
import 'package:gym_rats/View/Exercises/GridDemo.dart';
import 'package:gym_rats/View/Home/HomePage.dart';
import 'package:gym_rats/View/Home/Personel_Traine.dart';
import 'package:gym_rats/View/Home/account_page.dart';
import 'package:gym_rats/View/Meals/screens_nutrition/home.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  late GoogleMapController mapController;
  LatLng _initialPosition = const LatLng(37.7749, -122.4194); // Default to San Francisco
  Set<Marker> _markers = {};
  bool _loading = true;
  List<String> _gymNames = [];

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  void _getUserLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _initialPosition = LatLng(position.latitude, position.longitude);
      _loading = false;
    });
    _getNearbyGyms(position);
  }

  void _getNearbyGyms(Position position) async {
    final String apiKey = 'YOUR_GOOGLE_MAPS_API_KEY';
    final String url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${position.latitude},${position.longitude}&radius=1500&type=gym&key=$apiKey';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List results = data['results'];
      setState(() {
        _markers = results.map((place) {
          return Marker(
            markerId: MarkerId(place['place_id']),
            position: LatLng(place['geometry']['location']['lat'], place['geometry']['location']['lng']),
            infoWindow: InfoWindow(title: place['name']),
          );
        }).toSet();

        _gymNames = results.map<String>((place) => place['name']).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/explore.png', fit: BoxFit.cover),
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
              ],
            ),
          ),
          Positioned.fill(
            top: 158,
            left: 24,
            right: 24,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 304,
                      width: 363,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Frame 3867.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                    width: 363,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 1,
                        color: Colors.transparent,
                      ),
                      color: Colors.white.withOpacity(0),
                    ),
                    child: _loading
                        ? const Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            itemCount: _gymNames.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: width,
                                height: 54.17,
                                margin: const EdgeInsets.symmetric(vertical: 7),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color.fromARGB(200, 58, 58, 58),
                                ),
                                child: Center(
                                  child: Text(
                                    _gymNames[index],
                                    style: const TextStyle(fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 47,
              width: 430,
              decoration: const BoxDecoration(
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
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.to(() => NutritionPage());
                    },
                    child: Container(
                      height: 35.66,
                      width: 80.27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ColorsConfig.redColor,
                      ),
                      child: Center(child: Image.asset('assets/images/plus.png')),
                    ),
                  ),
                  const SizedBox(width: 5),
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
