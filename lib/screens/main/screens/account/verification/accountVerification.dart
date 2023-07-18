import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AccountVerificationScreen extends StatelessWidget {
  const AccountVerificationScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Column(
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
                        const Text('Account Verification',
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
                    SizedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
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
                                        "Email Verification",
                                        style:   TextStyle(
                                          color: Color(0xff4A4E49),
                                          fontSize: 14
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: const Color(0xff85B870)
                                        ),
                                        child: const Center(
                                          child: Text(
                                          "Completed",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xffE8E9E8),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "KYC Verification",
                                        style: TextStyle(
                                          color: Color(0xff4A4E49),
                                          fontSize: 14
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 107,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: const Color(0xffE1EDDB)
                                        ),
                                        child: const Center(
                                          child: Text(
                                          "Incomplete",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff85B870),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                        ),
                        elevation: 0
                      ),
                      child: const Text(
                        "Upload your valid ID",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        )
                      )
                    ),
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
