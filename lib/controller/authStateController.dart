import 'dart:convert';

import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:cargo_dealers_app/services/profile_api_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../services/auth_api_services.dart';
import '../services/pin_api_services.dart';
import '../storage/secureStorage.dart';

class AuthStateController extends GetxController {
  // instant variables
  String _phoneNumber = "";
  String _otp = "";
  String _firstname = "";
  String _lastname = "";
  String _email = "";
  String _country = "";
  String _dateOfBirth = "";
  String _pin = "";
  String _newPin = "";
  bool _isLoading = false;
  String _kycStatus = "";
  final List<String> _accountTypes = [
    "regular-driver",
    "coperate"
  ];
  bool _kycStatusResult = false;
  String _selectedType = "";
  String _userId = "";
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController= TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _businessNameController = TextEditingController();
  TextEditingController _businessEmailController = TextEditingController();
  String _businessName = "";
  String _businessEmail = "";
  String _businessCity = "";
  dynamic _walletBalance = 0;

  // getter
  String get phoneNumber => _phoneNumber;
  String get otp => _otp;
  String get firstname => _firstname;
  String get lastname => _lastname;
  String get email => _email;
  String get country => _country;
  String get dateOfBirth => _dateOfBirth;
  String get pin => _pin;
  String get newPin => _newPin;
  String get kycStatus => _kycStatus;
  bool get isLoading => _isLoading;
  bool get kycStatusResult => _kycStatusResult;
  List get accountTypes => _accountTypes;
  String get selectedType => _selectedType;
  String get userId => _userId;
  TextEditingController get firstnameController => _firstnameController;
  TextEditingController get lastnameController => _lastnameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get businessNameController => _businessNameController;
  TextEditingController get businessEmailController => _businessEmailController;
  String get businessName => _businessName;
  String get businessEmail => _businessEmail;
  String get businessCity => _businessCity;
  dynamic get walletBalance => _walletBalance;

  // setter
  updatePhone(value) {
    _phoneNumber = value;
    update();
  }
  updateOtp(value) {
    _otp = value;
    update();
  }
  updateFirstname(value) {
    _firstname = value;
    update();
  }
  updateLastname(value) {
    _lastname = value;
    update();
  }
  updateEmail(value) {
    _email = value;
    update();
  }
  updateCountry(value) {
    _country = value;
    update();
  }
  updatePin(value) {
    _pin = value;
    update();
  }
  updateNewPin(value) {
    _newPin = value;
    update();
  }
  updateAccountType(value) {
    _selectedType = value;
    update();
  }
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateBusinessName(value) {
    _businessName = value;
    update();
  }
  updateBusinessEmail(value) {
    _businessEmail = value;
    update();
  }
  updateBusinessCity(value) {
    _businessCity = value;
    update();
  }
  updateWalletBalance(value) {
    _walletBalance = value;
    update();
  }
  updateKycStatus(value) {
    _kycStatus = value;
    update();
  }
  updateKycStatusResult(value) {
    _kycStatusResult = value;
    update();
  }
  updateId(value) {
    _userId = value;
    update();
  }

  // REGISTER USER SERVICE
  Future<void> registerUser() async{
    updateIsLoading(true);

    Map<String, dynamic> registerDetails = {
      "phoneNumber": "234$_phoneNumber"
    };
    print(registerDetails);

    var response = await AuthApiServices.registerUserService(registerDetails);
    var responseData = response!.data;
    print(responseData);


    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Success!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storePhoneNumber(_phoneNumber);
      Get.offAllNamed(otpVerificationScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
          msg: responseData["message"],
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
  
  // VERIFY OTP (REGISTERATION) SERVICE
  Future<void> verifyRegistrationOtp() async{ 
    updateIsLoading(true);

    String number = await LocalStorage().fetchPhoneNumber();
    Map<String, dynamic> verifyRegOtpDetails = {
      "phoneNumber": "234$number",
      "otp": _otp
    };

    var response = await AuthApiServices.verifyRegistrationOtpService(verifyRegOtpDetails);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "OTP Verified Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserToken(responseData["data"]["accessToken"]);
      await LocalStorage().storeUserId(responseData["userDetails"]["uid"]);

      (responseData["userDetails"]["isProfileCompleted"])?
      Get.offAllNamed(getProfileScreen)
      :
      Get.offAllNamed(accountTypeScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // Update Profile
  Future<void> updateProfile() async{ 
    updateIsLoading(true);

    Map<String, dynamic> updateProfileDetails = {
      "firstname": _firstname,
      "lastname": _lastname,
      "email": _email,
      "country": _country,
    };

    String userId = await LocalStorage().fetchUserId();

    var response = await ProfileApiService.updateProfileService(updateProfileDetails, userId);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Success!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserId(responseData["data"]["uid"]);

      (selectedType == "coperate")?
      Get.offAllNamed(businessDetailScreen)
      :
      Get.offAllNamed(createPinScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // Update business Profile
  Future<void> updateBusinessProfile() async{ 
    updateIsLoading(true);

    Map<String, dynamic> updateProfileDetails = {
      "businessName": _businessName,
      "businessEmail": _businessEmail,
    };

    String userId = await LocalStorage().fetchUserId();

    var response = await ProfileApiService.updateProfileService(updateProfileDetails, userId);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Success!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserId(responseData["data"]["uid"]);

      Get.offAllNamed(createPinScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // edit Profile
  Future<void> editProfile() async{ 
    updateIsLoading(true);

    Map<String, dynamic> updateProfileDetails = {
      "firstname": _firstnameController.text,
      "lastname": _lastnameController.text,
      "email": _emailController.text,
      "phoneNumber": _phoneController.text,
    };

    String userId = await LocalStorage().fetchUserId();

    var response = await ProfileApiService.updateProfileService(updateProfileDetails, userId);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Profile Updated Successfully!!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserId(responseData["data"]["uid"]);

      _firstnameController.text = responseData["data"]["firstname"];
      _lastnameController.text = responseData["data"]["lastname"];
      _emailController.text = responseData["data"]["email"];
      _phoneController.text = responseData["data"]["phoneNumber"];

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // edit Profile
  Future<void> editBusinessProfile() async{ 
    updateIsLoading(true);

    Map<String, dynamic> updateProfileDetails = {
      "businessName": _businessNameController.text,
      "businessEmail": _businessEmailController.text,
    };

    String userId = await LocalStorage().fetchUserId();

    var response = await ProfileApiService.updateProfileService(updateProfileDetails, userId);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Profile Updated Successfully!!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      await LocalStorage().storeUserId(responseData["data"]["uid"]);

      _firstnameController.text = responseData["data"]["firstname"];
      _lastnameController.text = responseData["data"]["lastname"];
      _emailController.text = responseData["data"]["email"];
      _phoneController.text = responseData["data"]["phoneNumber"];

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // reset pin
  Future<void> resetPin() async{ 
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "pin": _pin,
      "newPin": _newPin,
    };

    String userId = await LocalStorage().fetchUserId();

    var response = await PinApiServices.updatePinServices(details);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Success!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // create pin
  Future<void> createPin() async{ 
    updateIsLoading(true);

    Map<String, dynamic> createPinDetails = {
      "pin": _pin,
    };

    String userId = await LocalStorage().fetchUserId();

    var response = await PinApiServices.createPinServices(createPinDetails);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Success!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      Get.offAllNamed(welcome);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // get Profile
  Future<void> getProfile() async{ 
    updateIsLoading(true);

    String userId = await LocalStorage().fetchUserId();
    updateId(userId);

    var response = await ProfileApiService.getProfileService(userId);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Success!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      _firstnameController.text = responseData["data"]["firstname"];
      _lastnameController.text = responseData["data"]["lastname"];
      _emailController.text = responseData["data"]["email"];
      _phoneController.text = responseData["data"]["phoneNumber"];
      if(responseData["data"]["accountType"] == "regular-driver"){
        null;
      } else {
        _businessNameController.text = responseData["data"]["businessName"];
        _businessEmailController.text = responseData["data"]["businessEmail"];
      }
      updateWalletBalance(responseData["data"]["walletBalance"]);

      if(responseData["data"]["isProfileCompleted"]) {
        Get.toNamed(holderScreen);
      } else {
        Get.offAllNamed(accountTypeScreen);
      }

      updateAccountType(responseData["data"]["accountType"]);
      updateKycStatus(responseData["data"]["kycStatus"]);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      ); 

      Get.offAllNamed(phoneNumberScreen);

    }
  }

  // set account type
  Future<void> setAccountType() async{ 
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "accountType": _selectedType
    };
    print(_details);

    var response = await AuthApiServices.setAccountTypeService(_details);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Success!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      
      Get.toNamed(bioDataScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  // LOGOUT AUTH
  Future<void> logoutAuth() async{
    await LocalStorage().deleteUserStorage();

    Fluttertoast.showToast(
      msg: "Logout Successful!!!",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0
    );

    Get.offAllNamed(onboardingScreen);
  }

  Future<void> getKycStatus() async {
    List<Map<String, dynamic>> _kycResult = [];

    FlutterSecureStorage _flutterSecureStorage = const FlutterSecureStorage();

    String stringData = await _flutterSecureStorage.read(key: "KycResult") ?? "";

    var decodedData = jsonDecode(stringData);

    _kycResult = decodedData;

    updateKycStatusResult(_kycResult[0]["data"]["index"]["status"]);

    update();
  }
}