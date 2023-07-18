import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage{

  final FlutterSecureStorage _flutterSecureStorage = FlutterSecureStorage();

  // STORE ID
  storeUserId(String userId) async{
    try {
      await _flutterSecureStorage.write(key: "UserId", value: userId);
      print("Saved Id");
    } catch (e) {
      print(e);
      print("Could not save id");
    }
  }

  // FETCH ID
  Future<String> fetchUserId() async{
    String userId = await _flutterSecureStorage.read(key: "UserId") ?? "";
    print("Fetched Id successful");

    return userId;
  }

  // STORE PHONE NUMBER
  storePhoneNumber(String number) async{
    try {
      await _flutterSecureStorage.write(key: "PhoneNumber", value: number);
      print("Saved Number");
    } catch (e) {
      print(e);
      print("Could not save number");
    }
  }

  // FETCH ID
  Future<String> fetchPhoneNumber() async{
    String number = await _flutterSecureStorage.read(key: "PhoneNumber") ?? "";
    print("Fetched number successful");

    return number;
  }

  // STORE TOKEN
  storeUserToken(String token) async{
    try {
      await _flutterSecureStorage.write(key: "Token", value: token);
      print("Saved Token");
    } catch (e) {
      print(e);
      print("Could not save token");
    }
  }

  // FETCH TOKEN
  Future<String> fetchUserToken() async{
    String token = await _flutterSecureStorage.read(key: "Token") ?? "";
    print("Fetched token successful");

    return token;
  }

  // DELETE USER FROM STORAGE
  Future<void> deleteUserStorage() async{
    await _flutterSecureStorage.deleteAll();
    print("Deleted Storage :)");
  }
}