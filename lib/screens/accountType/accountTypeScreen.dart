import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../controller/authStateController.dart';
import '../../routes/app_route_names.dart';

class AccountTypeScreen extends StatelessWidget {
  AccountTypeScreen({super.key});

  final AuthStateController _authStateController = Get.put(AuthStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
            backgroundColor: const Color(0xFFEFF5ED),
            body: Container(
              height: Get.height,
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(Iconsax.arrow_left,
                                size: 30, color: Color(0xff85B870)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Let’s get started',
                              style: TextStyle(color: Color(0xff777B76), fontSize: 12)),
                          const Text('Are you an Individual or Corporate?',
                              style: TextStyle(
                                  color: Color(0xff1D221B),
                                  fontSize: 24,
                                  fontFamily: "Raleway",
                                  fontWeight: FontWeight.bold
                          )),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.updateAccountType(controller.accountTypes[0]);
                                },
                                child: Container(
                                  height: 189,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: (controller.selectedType == controller.accountTypes[0])?
                                    const Color(0xff85B870)
                                    :
                                    const Color(0xffE1EDDB),
                                      borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/individual.png"),
                                        const Text(
                                          "Individual",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.updateAccountType(controller.accountTypes[1]);
                                },
                                child: Container(
                                  height: 189,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: (controller.selectedType == controller.accountTypes[1])?
                                      const Color(0xff85B870)
                                      :
                                      const Color(0xffE1EDDB),
                                      borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/corporate.png"),
                                        const Text(
                                          "Corporate",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                              ),
                            ],
                          )
                          
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: SizedBox(
                          height: 48,
                          width: Get.width,
                          child: ElevatedButton(
                            onPressed: (){
                              controller.setAccountType();
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
            ));
      }
    );
  }
}
