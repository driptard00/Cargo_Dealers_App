import 'package:cargo_dealers_app/controller/wallet_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class WalletConfirmPaymentScreen extends StatelessWidget {
  WalletConfirmPaymentScreen({Key? key}) : super(key: key);

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
                    flex: 8,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
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
                            const Text('Confirm Pin',
                              style: TextStyle(
                                  color: Color(0xff1D221B),
                                  fontSize: 24,
                                  fontFamily: "Raleway",
                              fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        const Text('Enter Your Pin',
                          style: TextStyle(
                              color: Color(0xff1D221B),
                              fontSize: 24,
                              fontFamily: "Raleway",
                          fontWeight: FontWeight.bold
                        )),
                        Form(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                            child: PinCodeTextField(
                              autoDisposeControllers: false,
                              appContext: context,
                              length: 4,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              enableActiveFill: true,
                              enablePinAutofill: false,
                              errorTextSpace: 0.0,
                              showCursor: true,
                              cursorColor: Color(0xFF85B870),
                              obscureText: true,
                              obscuringCharacter: '●',
                              pinTheme: PinTheme(
                                fieldHeight: 56.0,
                                fieldWidth: 40.0,
                                borderWidth: 2.0,
                                borderRadius: BorderRadius.circular(4.0),
                                shape: PinCodeFieldShape.box,
                                activeColor: Color(0xFFFCFDFC),
                                inactiveColor: Color(0xFFE8E9E8),
                                selectedColor: Color(0xFFFCFDFC),
                                activeFillColor: Color(0xFFFCFDFC),
                                inactiveFillColor: Color(0xFFE8E9E8),
                                selectedFillColor: Color(0xFFFCFDFC),
                              ),
                              validator: ValidationBuilder().build(),
                              onChanged: (value) {
                                controller.updatePin(value);
                              },
                            ),
                          ),
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
                            controller.confirmPin();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff85B870),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            ),
                            elevation: 0
                          ),
                          child: (controller.isLoading)?
                          const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                          :
                          const Text(
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
