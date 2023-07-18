import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WalletWithdrawalSuccessScreen extends StatelessWidget {
  const WalletWithdrawalSuccessScreen({Key? key}) : super(key: key);

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
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/success.png"),
                    const SizedBox(height: 30,),
                    const Text('Withdrawal Successful',
                      style: TextStyle(
                          color: Color(0xff1D221B),
                          fontSize: 24,
                          fontFamily: "Raleway",
                      fontWeight: FontWeight.bold
                    )),
                    const SizedBox(height:15,),
                    const Text(
                      'You have successfully withdrawn N20,000 to Gabin Yarigo at GTBank.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff777B76),
                        fontSize: 12
                      )
                    ),
                  ],
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
                        Get.toNamed(holderScreen);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff85B870),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                        ),
                        elevation: 0
                      ),
                      child: const Text(
                        "My Wallet",
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
