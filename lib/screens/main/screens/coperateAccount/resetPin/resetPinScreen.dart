import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../controller/authStateController.dart';

class CorporateResetPinScreen extends StatelessWidget {
  CorporateResetPinScreen({super.key});

  final AuthStateController _authStateController = Get.find<AuthStateController>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            const Text('Reset Pin',
                              style: TextStyle(
                                color: Color(0xff1D221B),
                                fontSize: 24,
                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: Color(0xff85B870),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Seems you forgot your pin, let’s help you reset it.',
                          style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 16,
                        )),
                        const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Email',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                const SizedBox(height: 5,),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                    hintText: "e.g example@gmail.com",
                                    hintStyle: TextStyle(
                                      color: Color(0xff777B76),
                                      fontSize: 12
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE8E9E8)
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE8E9E8)
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                        width: 1.0,
                                      ),
                                      borderRadius:  BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE8E9E8),
                                        width: 1.0,
                                      ),
                                      borderRadius:  BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  validator: ValidationBuilder().build(),
                                  onChanged: (value) {
                                    controller.updateEmail(value);
                                  },
                                ),
                              ],
                            ),
                          ),                        
                      ],
                    ),
                    const SizedBox(height: 70,),
                    SizedBox(
                      height: 48,
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: (){
                          (_formKey.currentState!.validate())?
                          controller.editProfile()
                          :
                          AutovalidateMode.disabled;
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
                          "Reset",
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
            ),
          ),
        );
      }
    );
  }
}