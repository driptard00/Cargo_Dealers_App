import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:cargo_dealers_app/storage/secureStorage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  checkUser() async {
    String userId = await LocalStorage().fetchUserId();
    (userId == "")?
      Get.toNamed(onboardingScreen):
      Get.toNamed(getProfileScreen);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.toNamed(onboardingScreen);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF006600),
      body: Center(
        child: Image.asset(
          'assets/images/cargoLogo.png',
          width: 276.0,
          height: 88.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
