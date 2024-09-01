import 'package:get/get.dart';
import 'package:tasks_managment_app/screens/home.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() async {
    await Future.delayed(Duration(seconds: 3)); // Wait for 3 seconds
    Get.off(Home()); // Navigate to HomeScreen
  }
}
