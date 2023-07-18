import 'package:dio/dio.dart';

import '../routes/api_routes.dart';
import '../storage/secureStorage.dart';

class AuthApiServices {
  
  // REGISTER USER SERVICE
  static Future<Response?> registerUserService(Map<String, dynamic> registerDetails) async{
    try {
      String fullUrl = "$baseUrl$registerRoute";
      print("FULLURL:$fullUrl");
      print("REGISTERDETAILS:$registerDetails");

      var response = await Dio().post(
        fullUrl,
        data: registerDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // VERIFY OTP (REGISTRATION) SERVICE
  static Future<Response?> verifyRegistrationOtpService(Map<String, dynamic> verifyRegOtpDetails) async{
    try {
      String fullUrl = "$baseUrl$verifyRegisterOtpRoute";
      print("FULLURL:$fullUrl");
      print(verifyRegOtpDetails);

      var response = await Dio().post(
        fullUrl,
        data: verifyRegOtpDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // SET ACCOUNT TYPE
  static Future<Response?> setAccountTypeService(Map<String, dynamic> setAccountTypeDetails) async{
    try {
      String fullUrl = "$baseUrl$accountTypeRoute";
      print("FULLURL:$fullUrl");

      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: setAccountTypeDetails,
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