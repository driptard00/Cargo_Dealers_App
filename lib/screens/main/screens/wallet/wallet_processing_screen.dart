import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:cargo_dealers_app/controller/wallet_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../../../routes/app_route_names.dart';

class WalletProcessingScreen extends StatefulWidget {
  const WalletProcessingScreen({super.key});

  @override
  State<WalletProcessingScreen> createState() => _WalletProcessingScreenState();
}
  final WalletStateController _walletStateController = Get.find<WalletStateController>();

class _WalletProcessingScreenState extends State<WalletProcessingScreen> {

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        _walletStateController.withdraw();
      }
    );
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Withdrawal Processing',
              style: TextStyle(
                  color: Color(0xff1D221B),
                  fontSize: 24,
                  fontFamily: "Raleway",
              fontWeight: FontWeight.bold
            )),
            SpinKitWaveSpinner(
              size: 100,
              color: Color(0xff006600),
            ),
          ],
        ),
      ),
    );
  }
}