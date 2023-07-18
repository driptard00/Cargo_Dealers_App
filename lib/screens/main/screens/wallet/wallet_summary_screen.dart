import 'package:cargo_dealers_app/controller/wallet_state_controller.dart';
import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WalletSummaryScreen extends StatelessWidget {
  WalletSummaryScreen({Key? key}) : super(key: key);

  final WalletStateController _walletStateController = Get.find<WalletStateController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalletStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 30,),
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
                              const Text('Summary',
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
                          const Text('Amount',
                            style: TextStyle(
                              color: Color(0xff1D221B),
                              fontSize: 16,
                          )),  
                          const SizedBox(
                            height: 10,
                          ), 
                          Text('N${controller.amount}',
                            style: const TextStyle(
                              color: Color(0xff1D221B),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          )),   
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
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Beneficiary Details",
                                          style: TextStyle(
                                            color: Color(0xffA5A7A4),
                                            fontSize: 14
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              controller.accountNameController.text,
                                              textAlign: TextAlign.end,
                                              style: const TextStyle(
                                                color: Color(0xff1D221B),
                                                fontSize: 14
                                              ),
                                            ),
                                            Text(
                                              controller.selectedBank,
                                              style: const TextStyle(
                                                color: Color(0xffA5A7A4),
                                                fontSize: 12
                                              ),
                                            ),
                                          ],
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
                                        "Sender",
                                        style: TextStyle(
                                          color: Color(0xffA5A7A4),
                                          fontSize: 14
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "Cargodealer",
                                            style: TextStyle(
                                              color: Color(0xff1D221B),
                                              fontSize: 14
                                            ),
                                          ),
                                          Text(
                                            "Wema Bank",
                                            style: TextStyle(
                                              color: Color(0xffA5A7A4),
                                              fontSize: 12
                                            ),
                                          ),
                                        ],
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
                                        "Date",
                                        style: TextStyle(
                                          color: Color(0xffA5A7A4),
                                          fontSize: 14
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            DateTime.now().toString().split(" ").first,
                                            style: const TextStyle(
                                              color: Color(0xff1D221B),
                                              fontSize: 14
                                            ),
                                          ),
                                          Text(
                                            TimeOfDay.now().toString(),
                                            style: const TextStyle(
                                              color: Color(0xffA5A7A4),
                                              fontSize: 12
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xffE8E9E8),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Note",
                                          style: TextStyle(
                                            color: Color(0xffA5A7A4),
                                            fontSize: 14
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          controller.note,
                                          textAlign: TextAlign.end,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            color: Color(0xff1D221B),
                                            fontSize: 14
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        height: 48,
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: (){
                            Get.toNamed(walletConfirmPaymentScreen);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff85B870),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            ),
                            elevation: 0
                          ),
                          child: const Text(
                            "Confirm",
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
