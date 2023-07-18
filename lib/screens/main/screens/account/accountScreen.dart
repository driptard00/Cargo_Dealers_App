import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../controller/authStateController.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);

  // final AuthStateController _authStateController = Get.find<AuthStateController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    const Text('Account',
                        style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 24,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.bold
                    )),
                    const SizedBox(height: 30,),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('PROFILE',
                            style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )),
                          const SizedBox(height: 10,),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  _listTile(Iconsax.user, "Profile", (){Get.toNamed(profileScreen);}),
                                  const Divider(
                                    color: Color(0xffE8E9E8),
                                  ),
                                  _listTile(Iconsax.verify, "Verification", (){Get.toNamed(verificationScreen);})
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('SECURITY',
                            style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )),
                          const SizedBox(height: 10,),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                              ),
                              child: Center(child: _listTile(Iconsax.lock, "Reset Pin", (){Get.toNamed(resetPinScreen);})),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Customer Support',
                            style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )),
                          const SizedBox(height: 10,),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  _listTile(Iconsax.message_question, "View FAQs", (){Get.toNamed("");}),
                                  const Divider(
                                    color: Color(0xffE8E9E8),
                                  ),
                                  _listTile(Iconsax.messages, "Support", (){Get.toNamed("");})
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        controller.logoutAuth();
                      },
                      child: const Text(
                        "Logout",
                        style: TextStyle(
                          color: Color(0xff609C47),
                          fontSize: 14
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }

  ListTile _listTile(IconData icon, String title, Function() onTap) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffEFF5ED)
        ),
        child: Center(
          child: Icon(
            icon,
            color: const Color(0xff609C47),
            size: 20,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xff4A4E49),
          fontSize: 14
        ),
      ),
    );
  }
}
