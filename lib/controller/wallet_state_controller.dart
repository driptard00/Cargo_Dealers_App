import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:cargo_dealers_app/services/pin_api_services.dart';
import 'package:cargo_dealers_app/services/wallet_api_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../storage/secureStorage.dart';

class WalletStateController extends GetxController {
  // instant variables
  String _bankBalance = "";
  bool _isVisible = false;
  String _amount = "";
  bool _isLoading = false;
  String _selectedBank = "";
  String _accountNumber = "";
  String _nameOnAccount = "";
  String _note = "";
  String _bankCode = "";
  String _pin = "";
  List<dynamic> _transactionList = [];
  List<dynamic> _banksList = [];
  TextEditingController _accountNameController = TextEditingController();

  // getters
  String get bankBalance => _bankBalance;
  bool get isVisible => _isVisible;
  String get amount => _amount;
  bool get isLoading => _isLoading;
  String get nameOnAccount => _nameOnAccount;
  String get note => _note;
  String get accountNumber => _accountNumber;
  String get selectedBank => _selectedBank;
  String get bankCode => _bankCode;
  String get pin => _pin;
  List<dynamic> get transactionList => _transactionList;
  List<dynamic> get banksList => _banksList;
  TextEditingController get accountNameController => _accountNameController;

  // setters
  updateBankBalance(value) {
    _bankBalance = value;
    update();
  }
  updateVisibility() {
    _isVisible = !_isVisible;
    update();
  }
  updateAmount(value) {
    _amount = value;
    update();
  }
  updateNameOnAccount(value) {
    _accountNameController.text = value;
    update();
  }
  updateNote(value) {
    _note = value;
    update();
  }
  updateAccountNumber(value) {
    _accountNumber = value;
    update();
  }
  updateSelectedBank(value) {
    _selectedBank = value;
    update();
  }
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateTransactionList(value) {
    _transactionList = value;
    update();
  }
  updateBankList(value) {
    _banksList = value;
    update();
  }
  updateBankCode(value) {
    _bankCode = value;
    update();
  }
  updatePin(value) {
    _pin = value;
    update();
  }

  // get wallet transaction
  Future<void> getWalletTransactions() async{ 
    updateIsLoading(true);

    String userId = await LocalStorage().fetchUserId();

    var response = await WalletApiService.getTransactions();
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);

      updateTransactionList(responseData["data"]["transactions"]);      

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

  // get banks
  Future<void> getBanks() async{ 
    updateIsLoading(true);

    String userId = await LocalStorage().fetchUserId();

    var response = await WalletApiService.getBanksService();
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);

      updateBankList(responseData["banks"]);      

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

  // get account name
  Future<void> getAccountName() async{ 
    updateIsLoading(true);

    String userId = await LocalStorage().fetchUserId();

    Map<String, dynamic> _details = {
      "accountNumber": _accountNumber,
      "bankCode": _bankCode
    };

    var response = await WalletApiService.getAccountName(_details);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "true"){
      updateIsLoading(false);

      _accountNameController.text = responseData["data"]["accountName"]; 

      update();   

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

    update();
  }

  // withdraw
  Future<void> withdraw() async{ 
    updateIsLoading(true);

    String userId = await LocalStorage().fetchUserId();

    Map<String, dynamic> _details = {
      "amount": _amount,
      "bankCode": _bankCode,
      "accountNumber": _accountNumber,
      "note": _note
    };
    print(_details);

    var response = await WalletApiService.withdrawalService(_details);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);

      Get.toNamed(withdrawalSuccessScreen);

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

      Get.back();

    }
  }

  // confirm pin
  Future<void> confirmPin() async{ 
    updateIsLoading(true);

    String userId = await LocalStorage().fetchUserId();

    Map<String, dynamic> _details = {
      "pin": pin
    };

    var response = await PinApiServices.verifyPinService(_details);
    var responseData = response!.data;
    print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);

      Fluttertoast.showToast(
        msg: responseData["message"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      ); 

      Get.toNamed(walletProcessingScreen);

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

}