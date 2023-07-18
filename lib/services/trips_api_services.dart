import 'package:dio/dio.dart';

import '../routes/api_routes.dart';
import '../storage/secureStorage.dart';

class TripsApiServices {

  // GET TRIPS SERVICE
  static Future<Response?> getTripsService() async{
    try {
      String fullUrl = "$baseUrl$getTripsRoute";
      print("FULLURL:$fullUrl");
      
      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().get(
        fullUrl,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }
        )
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // ACCEPT TRIPS SERVICE
  static Future<Response?> acceptTripService(dynamic details) async{
    try {
      String fullUrl = "$baseUrl$acceptTripRoute";
      print("FULLURL:$fullUrl");
      
      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: details,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }
        )
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // START TRIPS SERVICE
  static Future<Response?> startTripService(dynamic details) async{
    try {
      String fullUrl = "$baseUrl$startTripRoute";
      print("FULLURL:$fullUrl");
      
      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: details,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }
        )
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }
}