import 'package:dio/dio.dart';

import '../routes/api_routes.dart';
import '../storage/secureStorage.dart';

class ProfileApiService {
  
  // GET PROFILE SERVICE
  static Future<Response?> getProfileService(String userId) async{
    try {
      String fullUrl = "$baseUrl$getProfileRoute$userId/get-profile";
      print("FULLURL:$fullUrl");
      print(fullUrl);

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
  
  // UPDATE PROFILE SERVICE
  static Future<Response?> updateProfileService(Map<String, dynamic> updateProfileDetails, String userId) async{
    try {
      String fullUrl = "$baseUrl$updateProfileRoute$userId/update-profile";
      print("FULLURL:$fullUrl");

      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: updateProfileDetails,
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