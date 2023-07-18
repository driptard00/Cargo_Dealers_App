import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:cargo_dealers_app/screens/verification/kyc_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class KycScreen extends StatelessWidget {
  const KycScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "KYC Verification",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Update your kyc verification details to access important features",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      KycVerification.kycVerification(context, controller.userId);
                    },
                    child: Container(
                      height: 100,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xff85B870).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Get started with the verification process, this won't take more than 5 minutes",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}