import 'package:dio/dio.dart';

import '../routes/api_routes.dart';
import '../storage/secureStorage.dart';

class PinApiServices {

  // VERIFY PIN SERVICE
  static Future<Response?> verifyPinService(Map<String, dynamic> verifyPinDetails) async{
    try {
      String fullUrl = "$baseUrl$verifyPinRoute";
      print("FULLURL:$fullUrl");

      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: verifyPinDetails,
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

  // CREATE PIN SERVICE
  static Future<Response?> createPinServices(Map<String, dynamic> createPinDetails) async{
    try {
      String fullUrl = "$baseUrl$createPinRoute";
      print("FULLURL:$fullUrl");
      print(createPinDetails);
      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: createPinDetails,
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

  // UPDATE PIN SERVICE
  static Future<Response?> updatePinServices(Map<String, dynamic> updatePinDetails) async{
    try {
      String fullUrl = "$baseUrl$updatePinRoute";
      print("FULLURL:$fullUrl");

      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: updatePinDetails,
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