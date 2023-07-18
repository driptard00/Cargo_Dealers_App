import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:cargo_dealers_app/controller/wallet_state_controller.dart';
import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({Key? key}) : super(key: key);

  final WalletStateController _walletStateController = Get.put(WalletStateController());
  final AuthStateController _authStateController = Get.find<AuthStateController>();

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _walletStateController.getWalletTransactions();
      _authStateController.getProfile();
    },
    );

    return GetBuilder<WalletStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: SafeArea(
            child: Container(
              height: Get.height,
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text('My Wallet',
                    style: TextStyle(
                      color: Color(0xff1D221B),
                      fontSize: 24,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold
                  )),
                  const SizedBox(height: 30,),
                  Container(
                    height: 182,
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xff85B870),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Available Balance',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                )),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller.updateVisibility();
                                    },
                                    child: Icon(
                                      (controller.isVisible)?
                                      Iconsax.eye
                                      :
                                      Iconsax.eye_slash,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text(
                                    (controller.isVisible)?
                                    "Hide"
                                    :
                                    'Show',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/naira.png", color: Colors.white,),
                            const SizedBox(width: 5,),
                            (controller.isLoading)?
                            const CircularProgressIndicator(
                              color: Colors.white,
                            )
                            :
                            Text(
                              (!controller.isVisible)?
                              "****"
                              :
                              _authStateController.walletBalance.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 48,
                          width: Get.width,
                          child: ElevatedButton(
                            onPressed: (){
                              Get.toNamed(walletWithdrawalScreen);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                              ),
                              elevation: 0
                            ),
                            child: const Text(
                              "Withdraw",
                              style: TextStyle(
                                color: Color(0xff85B870),
                                fontSize: 16
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    children: const [
                      Text('Transaction History',
                        style: TextStyle(
                          color: Color(0xff1D221B),
                          fontSize: 24,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                      child: (controller.isLoading)?  
                      const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xff006600),
                        ),
                      )
                      :
                      ListView.builder(
                        itemCount: controller.transactionList.length,
                        itemBuilder: (context, index){
                          return ListTile(
                            leading: Container(
                              height: 16,
                              width: 16,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff85B870)
                              ),
                            ),
                            title: Text(controller.transactionList[index]["type"],
                              style: const TextStyle(
                                color: Color(0xff1D221B),
                                fontSize: 14,
                            )),
                            subtitle: const Text('Aug 11th, 2022',
                              style: TextStyle(
                                color: Color(0xffA5A7A4),
                                fontSize: 14,
                            )),
                            trailing: Text(
                              (!controller.isVisible)?
                              "****"
                              :
                              '+ N${controller.transactionList[index]["amount"]}',
                              style: const TextStyle(
                                color: Color(0xff1D221B),
                                fontSize: 14,
                            )),
                          );
                        }
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
