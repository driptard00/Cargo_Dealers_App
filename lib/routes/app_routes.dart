import 'package:cargo_dealers_app/screens/auth/businessDetails/businessDetailsScreen.dart';
import 'package:cargo_dealers_app/screens/details/getDetailsScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/account/editProfile/editProfileScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/account/profile/profileScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/account/resetPin/resetPinInput.dart';
import 'package:cargo_dealers_app/screens/main/screens/account/resetPin/resetPinOtp.dart';
import 'package:cargo_dealers_app/screens/main/screens/account/resetPin/resetPinScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/account/verification/accountVerification.dart';
import 'package:cargo_dealers_app/screens/main/screens/coperateAccount/drivers/addDriversScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/coperateAccount/editProfile/editProfileScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/coperateAccount/profile/profileScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/coperateAccount/resetPin/resetPinScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/coperateAccount/vehicles/addVehicleInputScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/coperateAccount/verification/accountVerification.dart';
import 'package:cargo_dealers_app/screens/main/screens/trip/packageInfos/packageInfoCompletedScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/trip/packageInfos/packageInfoScreen.dart';
import 'package:cargo_dealers_app/screens/main/screens/wallet/wallet_summary_screen.dart';
import 'package:cargo_dealers_app/screens/main/screens/wallet/wallet_withdrawal_screen.dart';
import 'package:get/get.dart';

import '../screens/accountType/accountTypeScreen.dart';
import '../screens/auth/bioData/fullname_widget.dart';
import '../screens/auth/otpVerification/phone_number_login_widget.dart';
import '../screens/auth/phoneNumberLogin/input_phone_number_login_widget.dart';
import '../screens/auth/pin/createPinScreen.dart';
import '../screens/auth/welcomeToCargoDealer/welcomeToCargoDealer.dart';
import '../screens/main/holderScreen/holderScreen.dart';
import '../screens/main/screens/coperateAccount/drivers/driversScreen.dart';
import '../screens/main/screens/coperateAccount/vehicles/vehicleScreen.dart';
import '../screens/main/screens/trip/packageInfos/packageInfoCompletedStopsScreen.dart';
import '../screens/main/screens/wallet/success.dart';
import '../screens/main/screens/wallet/wallet_confirm_payment.dart';
import '../screens/main/screens/wallet/wallet_processing_screen.dart';
import '../screens/onboarding/onboardingScreen.dart';
import '../screens/splash/splashScreen.dart';
import 'app_route_names.dart';

List<GetPage> getPages = [
  // SPLASH
  GetPage(
    name: splashScreen, 
    page: ()=> SplashScreen()
  ),

  // ACCOUNT TYPE
  GetPage(
    name: accountTypeScreen, 
    page: ()=> AccountTypeScreen()
  ),

  // ONBOARDING
  GetPage(
    name: onboardingScreen, 
    page: ()=> OnboardingScreen()
  ),

  // PHONE NUMBER
  GetPage(
    name: phoneNumberScreen, 
    page: ()=> PhoneNumberScreen()
  ),

  // OTP
  GetPage(
    name: otpVerificationScreen, 
    page: ()=> OTPVerificationScreen()
  ),

  // BIO DATA
  GetPage(
    name: bioDataScreen, 
    page: ()=> BioDataScreen()
  ),

  // CREATE PIN
  GetPage(
    name: createPinScreen, 
    page: ()=> CreatePinScreen()
  ),

  // CREATE PIN
  GetPage(
    name: welcome, 
    page: ()=> WelcomeToCargoDealer()
  ),

  // GET PROFILE
  GetPage(
    name: getProfileScreen, 
    page: ()=> GetDriverProfileScreen()
  ),

  // BUSINESS DETAILS SCREEN
  GetPage(
    name: businessDetailScreen, 
    page: ()=> BusinessDetailsScreen()
  ),

  // HOLDER SCREEN
  GetPage(
    name: holderScreen, 
    page: ()=> HolderScreen()
  ),

  // PROFILE SCREEN
  GetPage(
    name: profileScreen, 
    page: ()=> ProfileScreen()
  ),

  // EDIT PROFILE SCREEN
  GetPage(
    name: editScreen, 
    page: ()=> EditProfileScreen()
  ),

  // ACCOUNT VERIFICATION SCREEN
  GetPage(
    name: verificationScreen, 
    page: ()=> AccountVerificationScreen()
  ),

  // RESET PIN SCREEN
  GetPage(
    name: resetPinScreen, 
    page: ()=> ResetPinScreen()
  ),

  // RESET PIN OTP SCREEN
  GetPage(
    name: resetPinOtpScreen, 
    page: ()=> ResetPinOtpScreen()
  ),

  // RESET PIN INPUT SCREEN
  GetPage(
    name: resetPinInputScreen, 
    page: ()=> ResetPinInputScreen()
  ),

// =============================================================================

   // PROFILE SCREEN
  GetPage(
    name: coperateProfileScreen, 
    page: ()=> CorporateProfileScreen()
  ),

  // EDIT PROFILE SCREEN
  GetPage(
    name: coperateEditProfileScreen, 
    page: ()=> CorporateEditProfileScreen()
  ),

  // ACCOUNT VERIFICATION SCREEN
  GetPage(
    name: coperateVerificationScreen, 
    page: ()=> CorporateAccountVerificationScreen()
  ),

  // RESET PIN SCREEN
  GetPage(
    name: coperateResetPinScreen, 
    page: ()=> CorporateResetPinScreen()
  ),

  // VEHICLE SCREEN
  GetPage(
    name: coperateVehicleScreen, 
    page: ()=> CorporateVehicleListScreen()
  ),
  GetPage(
    name: coperateAddVehicleInputScreen, 
    page: ()=> AddVehicleScreen()
  ),

  // DRIVERS SCREEN
  GetPage(
    name: coperateAddDriverScreen, 
    page: ()=> CorporateDriversListScreen()
  ),

  // ADD DRIVERS INPUT SCREEN
  GetPage(
    name: coperateAddDriverInputScreen, 
    page: ()=> AddDriversScreen()
  ),

  // ADD VEHICLE INPUT SCREEN
  GetPage(
    name: coperateAddVehicleInputScreen, 
    page: ()=> AddVehicleScreen()
  ),

  // =================================================================

  // WALLET WITHDRAWAL SCREEN
  GetPage(
    name: walletWithdrawalScreen, 
    page: ()=> WalletWithdrawal()
  ),

  // WALLET SUMMARY SCREEN
  GetPage(
    name: walletSummaryScreen, 
    page: ()=> WalletSummaryScreen()
  ),

  // WALLET CONFIRM PAYMENT SCREEN
  GetPage(
    name: walletConfirmPaymentScreen, 
    page: ()=> WalletConfirmPaymentScreen()
  ),

  // WALLET PROCESSING SCREEN
  GetPage(
    name: walletProcessingScreen, 
    page: ()=> WalletProcessingScreen()
  ),

  // WALLET SUCCESS SCREEN
  GetPage(
    name: withdrawalSuccessScreen, 
    page: ()=> WalletWithdrawalSuccessScreen()
  ),

  // PACKAGE INFO IN TRANSIT SCREEN
  GetPage(
    name: packageInTransitInfoScreen, 
    page: ()=> PackageInfoTransitWidget()
  ),

  // PACKAGE INFO COMPLETED SCREEN
  GetPage(
    name: packageCompletedInfoScreen, 
    page: ()=> PackageInfoCompletedScreen()
  ),

  // PACKAGE INFO COMPLETED STOPS SCREEN
  GetPage(
    name: packageCompletedStopsInfoScreen, 
    page: ()=> PackageInfoCompletedStopsScreen()
  ),
];