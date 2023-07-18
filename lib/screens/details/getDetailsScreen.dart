import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class GetDriverProfileScreen extends StatefulWidget {
  const GetDriverProfileScreen({super.key});

  @override
  State<GetDriverProfileScreen> createState() => _GetDriverProfileScreenState();
}
  final AuthStateController _authStateController = Get.put(AuthStateController());

class _GetDriverProfileScreenState extends State<GetDriverProfileScreen> {

  @override
  void initState() {
    _authStateController.getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: const Center(
          child: SpinKitWaveSpinner(
            size: 100,
            color: Color(0xff006600),
          ),
        ),
      ),
    );
  }
}