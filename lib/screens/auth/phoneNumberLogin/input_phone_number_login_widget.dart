import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:form_validator/form_validator.dart';

class PhoneNumberScreen extends StatelessWidget {
  PhoneNumberScreen({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.put(AuthStateController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(Iconsax.arrow_left,
                              size: 30, color: Color(0xff85B870)),
                        ),
                        const SizedBox(height: 30,),
                        const Text('Enter your phone number',
                            style: TextStyle(
                                color: Color(0xff1D221B),
                                fontSize: 24,
                                fontFamily: "Raleway",
                            fontWeight: FontWeight.bold
                            )),
                        const Text(
                          'We will send a verification code to this number',
                          style: TextStyle(
                            color: Color(0xff777B76),
                            fontSize: 12
                          )
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
                          child: Text(
                            'Mobile number',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Form(
                          key: _formKey,
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFFE8E9E8),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 14.0, 0.0, 14.0),
                                  child: Image.asset(
                                    'assets/images/flag.png',
                                    width: 24.0,
                                    height: 18.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 14.0, 0.0, 14.0),
                                  child: Text(
                                    '+234',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Expanded(
                                  child: Center(
                                    child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
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
                                      ),
                                      validator: ValidationBuilder().phone().build(),
                                      onChanged: (value) {
                                        controller.updatePhone(value);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                            (_formKey.currentState!.validate())?
                              controller.registerUser()
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
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            )
                          )
                        ),
                      ),
                    )
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
