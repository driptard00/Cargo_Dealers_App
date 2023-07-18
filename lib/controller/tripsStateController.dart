import 'package:cargo_dealers_app/services/trips_api_services.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class TripsStateController extends GetxController {
  bool _isLoading = false;
  List<dynamic> _tripsList = [];

  // getters
  bool get isLoading => _isLoading;
  List<dynamic> get tripsList => [];

  // setters
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateTripsList(value) {
    _tripsList = value;
    update();
  }

  Future<void> acceptTrip(String tripId) async{
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "tripId" : tripId
    };

    var response = await TripsApiServices.acceptTripService(details);
    var responseData = response!.data;

   print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Accepted!!!",
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

  Future<void> startTrip(String tripId, String pickupCode) async{
    updateIsLoading(true);

    Map<String, dynamic> details = {
      "tripId" : tripId,
      "pickupCode" : pickupCode
    };

    var response = await TripsApiServices.startTripService(details);
    var responseData = response!.data;

   print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Trip Started!!!",
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

  Future<void> getTrips() async{
    updateIsLoading(true);

    var response = await TripsApiServices.getTripsService();
    var responseData = response!.data;

   print(responseData);

    String isSuccess = responseData["status"];
    if(isSuccess == "success"){
      updateIsLoading(false);

      updateTripsList(responseData["data"]["trips"]);

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