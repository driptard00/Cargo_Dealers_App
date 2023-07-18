import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  // final AuthStateController _authStateController = Get.find<AuthStateController>();

  @override
  Widget build(BuildContext context) {

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   _authStateController.getProfile();
    // },);

    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: (controller.isLoading)?
          const Center(
          child: SpinKitWaveSpinner(
              color: Color(0xff006600),
            ),
          )
          :
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(Iconsax.arrow_left,
                            size: 30, color: Color(0xff85B870)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text('Profile',
                          style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 24,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.bold
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Firstname",
                                  style: TextStyle(
                                    color: Color(0xff4A4E49),
                                    fontSize: 14
                                  ),
                                ),
                                Text(
                                  controller.firstnameController.text,
                                  style: const TextStyle(
                                    color: Color(0xffA5A7A4),
                                    fontSize: 14
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xffE8E9E8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Lastname",
                                  style:  TextStyle(
                                    color: Color(0xff4A4E49),
                                    fontSize: 14
                                  ),
                                ),
                                Text(
                                  controller.lastnameController.text,
                                  style: const TextStyle(
                                    color: Color(0xffA5A7A4),
                                    fontSize: 14
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xffE8E9E8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Email Address",
                                    style: const TextStyle(
                                      color: Color(0xff4A4E49),
                                      fontSize: 14
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex:1,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      controller.emailController.text,
                                      style: const TextStyle(
                                        color: Color(0xffA5A7A4),
                                        fontSize: 14
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xffE8E9E8),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Phone Number",
                                  style: const TextStyle(
                                    color: Color(0xff4A4E49),
                                    fontSize: 14
                                  ),
                                ),
                                Text(
                                  controller.phoneController.text,
                                  style: const TextStyle(
                                    color: Color(0xffA5A7A4),
                                    fontSize: 14
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            SizedBox(
                              height: 48,
                              width: Get.width,
                              child: ElevatedButton(
                                onPressed: (){
                                  Get.toNamed(editScreen);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff85B870),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  elevation: 0
                                ),
                                child: const Text(
                                  "Edit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                  )
                                )
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
          ),
        );
      }
    );
  }
}
