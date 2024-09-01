import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_managment_app/controller/splashController.dart';

class SplashScreen extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(181, 221, 6, 7),
            Color.fromARGB(255, 21, 147, 175)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Make sure path is correct
                width: 100,
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                "Make successful your day",
                style: TextStyle(
                  fontFamily: 'Creepster Caps',
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Enjoy ordering Tasks",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFC1CC41),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  controller.navigateToHome();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1493AF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(150, 45),
                ),
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
