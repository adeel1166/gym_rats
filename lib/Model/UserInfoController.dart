import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class UserInfoController extends GetxController {
  var gender = ''.obs;
  var age = 0.obs;
  var height = 0.obs;
  var weight = 0.obs;

  void setGender(String gender) {
    this.gender.value = gender;
  }

  void setAge(int age) {
    this.age.value = age;
  }

  void setHeight(int height) {
    this.height.value = height;
  }

  void setWeight(int weight) {
    this.weight.value = weight;
  }

  double calculateBMI() {
    if (height.value > 0) {
      double heightInMeters = height.value / 100.0;
      return weight.value / (heightInMeters * heightInMeters);
    }
    return 0.0;
  }
}
