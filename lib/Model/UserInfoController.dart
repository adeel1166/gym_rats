import 'package:get/get.dart';

class UserInfoController extends GetxController {
  var age = 0.obs;
  var height = 0.obs;
  var weight = 0.obs;

  void setAge(int newAge) {
    age.value = newAge;
  }

  void setHeight(int newHeight) {
    height.value = newHeight;
  }

  void setWeight(int newWeight) {
    weight.value = newWeight;
  }

  int calculateBMI() {
    // Example BMI calculation, you need to ensure height is in meters and weight in kilograms
    final heightInMeters = height.value / 100; // assuming height is stored in cm
    return (weight.value / (heightInMeters * heightInMeters)).round();
  }
}
