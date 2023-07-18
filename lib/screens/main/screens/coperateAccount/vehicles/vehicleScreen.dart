import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../controller/coperateStateController.dart';
import '../../../../../routes/app_route_names.dart';

class CorporateVehicleListScreen extends StatelessWidget {
  CorporateVehicleListScreen({super.key});

  final CoperateStateController _coperateStateController = Get.put(CoperateStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CoperateStateController>(
      builder: (controller) {
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
                            const Text('Vehicles',
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
                        (controller.isLoading)?
                        const Center(
                          child: CircularProgressIndicator(
                            color: Color(0xff85B870)
                          )
                        )
                        :
                        (controller.vehicleList.isEmpty)?
                        const Center(
                          child: Text(
                            "No vehicles added!"
                          ),
                        )
                        :
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
                                      ListView.separated(
                                        primary: false,
                                        shrinkWrap: true,
                                        itemCount: controller.vehicleList.length,
                                        separatorBuilder: (context, index) {
                                          return const Divider(
                                            color: Color(0xffE8E9E8),
                                          );
                                        },
                                        itemBuilder: (context, index) {
                                          return Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 32,
                                                    width: 32,
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20,),
                                                  Text(
                                                    controller.vehicleList[index]["name"],
                                                    style: const TextStyle(
                                                      color: Color(0xff4A4E49),
                                                      fontSize: 14
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Align(
                                                alignment: Alignment.centerRight,
                                                child: Container(
                                                  height: 25,
                                                  width: 107,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: const Color(0xff85B870)
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                    "Active",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        );
                                        },
                                      ),
                                      const Divider(
                                        color: Color(0xffE8E9E8),
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
                            Get.toNamed(coperateAddVehicleInputScreen);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff85B870),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            ),
                            elevation: 0
                          ),
                          child: const Text(
                            "Add Vehicle",
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
    );
  }
}