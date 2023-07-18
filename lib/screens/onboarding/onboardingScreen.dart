import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_route_names.dart';
import '../../widgets/buttons/normalButton.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.put(AuthStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Expanded(
                    flex: 8,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome to Cargodealer',
                          style: TextStyle(
                            color: Color(0xff777B76),
                            fontSize: 12
                          )
                        ),
                        const Text(
                          'Earn money by picking up and delivering packages.',
                          style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 32,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.bold
                          )
                        ),
                        const SizedBox(height: 50,),
                        Image.asset(
                          'assets/images/onboarding.png',
                          width: 360.0,
                          height: 340.0,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: SizedBox(
                              height: 48,
                              width: Get.width,
                              child: ElevatedButton(
                                onPressed: (){
                                  Get.offAllNamed(phoneNumberScreen);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff85B870),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  elevation: 0
                                ),
                                child: const Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                  )
                                )
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
