import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PickUpLocationArrivedModal {
  static showPickUpLocationArrivedModal() {
    Get.bottomSheet(
      Container(
        height: 300,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Color(0xffEFF5ED)
                        ),
                        child: const Center(
                          child: Icon(
                            Iconsax.location,
                            color: Color(0xff609C47),
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 8,
                    child:  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'You are at Kasham Ismaila’s location',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff1D221B),
                          fontSize: 16,
                        )
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Color(0xffEFF5ED)
                          ),
                          child: const Center(
                            child: Icon(
                              Iconsax.message,
                              color: Color(0xff609C47),
                              size: 20,
                            ),
                          ),
                        ),
                        const Text(
                          "Chat"
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Color(0xffEFF5ED)
                          ),
                          child: const Center(
                            child: Icon(
                              Iconsax.call,
                              color: Color(0xff609C47),
                              size: 20,
                            ),
                          ),
                        ),
                        const Text(
                          "Call"
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Color(0xffEFF5ED)
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.close,
                              color: Color(0xff609C47),
                              size: 20,
                            ),
                          ),
                        ),
                        const Text(
                          "Cancel"
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              SizedBox(
                height: 48,
                width: Get.width,
                child: ElevatedButton(
                  onPressed: (){
                    // Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff85B870),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)
                    ),
                    elevation: 0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          // PickUpModal.showPickUpModal();
                        },
                        child: const Icon(
                          Iconsax.scan,
                          size: 30,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Text(
                        "Confirm and Scan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        )
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
      isScrollControlled: true
    );
  }
}