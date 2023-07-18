import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeToCargoDealer extends StatefulWidget {
  const WelcomeToCargoDealer({super.key});

  @override
  State<WelcomeToCargoDealer> createState() => _WelcomeToCargoDealerState();
}

class _WelcomeToCargoDealerState extends State<WelcomeToCargoDealer> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.toNamed(getProfileScreen);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/welcome.png',
                  width: 343.0,
                  height: 367.0,
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                 Text('Welcome to Cargodealer',
                    style: TextStyle(
                        color: Color(0xff1D221B),
                        fontSize: 24,
                        fontFamily: "Raleway",
                    fontWeight: FontWeight.bold
                  )),
                 SizedBox(height: 20,),
                 Text(
                    'We help you ship your cargo better.',
                    style: TextStyle(
                      color: Color(0xff777B76),
                      fontSize: 12
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
