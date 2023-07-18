import 'package:dio/dio.dart';

import '../routes/api_routes.dart';
import '../storage/secureStorage.dart';

class WalletApiService {

  // GET TRANSACTIONS
  static Future<Response?> getTransactions() async {
    try {
      String fullUrl = "$baseUrl$getTransactionRoute";
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
  
  // GET BANKS
  static Future<Response?> getBanksService() async {
    try {
      String fullUrl = "$baseUrl$getBanksRoute";
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
  
  // GET ACCOUNT NAME
  static Future<Response?> getAccountName(Map<String, dynamic> _details) async {
    try {
      String fullUrl = "$baseUrl$getAccountNameRoute";
      print("FULLURL:$fullUrl");
      
      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: _details,
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
  
  // WITHDRAWAL SERVICE
  static Future<Response?> withdrawalService(Map<String, dynamic> _details) async {
    try {
      String fullUrl = "$baseUrl$withdrawalRoute";
      print("FULLURL:$fullUrl");
      
      String token = await LocalStorage().fetchUserToken();

      var response = await Dio().post(
        fullUrl,
        data: _details,
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