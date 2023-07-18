import 'package:cargo_dealers_app/services/vehicle_api_services.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CoperateStateController extends GetxController {
  // instant variable
  String _vehicleType = "";
  String _maker = "";
  String _model = "";
  String _year = "";
  String _color = "";
  String _plateNumber = "";
  String _licenseNumber = "";
  String _name = "";
  bool _isLoading = false;
  List<dynamic> _vehicleList = [];

  // getters
  String get vehicleType => _vehicleType;
  String get maker => _maker;
  String get model => _model;
  String get year => _year;
  String get color => _color;
  String get plateNumber => _plateNumber;
  String get licenseNumber => _licenseNumber;
  String get name => _name;
  bool get isLoading => _isLoading;
  List get vehicleList => _vehicleList;

  // setters
  updateVehicleType(value) {
    _vehicleType = value;
    update();
  }
  updateMaker(value) {
    _maker = value;
    update();
  }
  updateModel(value) {
    _model = value;
    update();
  }
  updateYear(value) {
    _year = value;
    update();
  }
  updateColor(value) {
    _color = value;
    update();
  }
  updatePlateNumber(value) {
    _plateNumber = value;
    update();
  }
  updateLicensedNumber(value) {
    _licenseNumber = value;
    update();
  }
  updateName(value) {
    _name = value;
    update();
  }
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateVehicleList(value) {
    _vehicleList = value;
    update();
  }

  Future<void> addVehicle() async{
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "vehicleType": _vehicleType,
      "maker": _maker,
      "model": _model,
      "year": _year,
      "color": _color,
      "plateNumber": _plateNumber,
      "licenseNumber": _licenseNumber,
      "name": _name
    };

    var response = await VehicleApiServices.addVehicleService(details);
    var responseData = response!.data;

   print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Vehicle Created!!!",
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
 
  Future<void> getVehicles() async{
    updateIsLoading(true);

    var response = await VehicleApiServices.getVehiclesService();
    var responseData = response!.data;

   print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);

      updateVehicleList(responseData["data"]["vehicles"]);

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