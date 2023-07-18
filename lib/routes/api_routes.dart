// ============= API ROUTES ==============

String baseUrl = "https://www.staging-api.cargodealerinc.com"; // BASE URL

// ======= AUTH ROUTES ==========
String registerRoute = "/api/v1/auth/driver/otp/get"; // SIGNUP ROUTE
String verifyRegisterOtpRoute = "/api/v1/auth/driver/otp/verify"; // VERIFY REGISTER OTP ROUTE
String accountTypeRoute = "/api/v1/driver/set-account-type"; // SET ACCOUNT TYPE


// ======= TRIPS ROUTES =========
String getTripsRoute = "/api/v1/driver/get-trips"; // GET TRIPS ROUTE
String acceptTripRoute = "/api/v1/trip/:id/accept"; // ACCEPT TRIPS ROUTE
String startTripRoute = "/api/v1/trip/:id/start"; // START TRIP ROUTE


// ====== PIN ROUTES ======
String verifyPinRoute = "/api/v1/driver/verify-pin"; // VERIFY PIN ROUTE
String createPinRoute = "/api/v1/driver/create-pin"; // CREATE PIN ROUTE
String updatePinRoute = "/api/v1/driver/update-pin"; // UPDATE PIN ROUTE


// ======= PROFILE ROUTES ======
String updateProfileRoute = "/api/v1/driver/"; // UPDATE PROFILE ROUTE
String getProfileRoute = "/api/v1/driver/"; // GET PROFILE ROUTE


// ========== VEHICLE ROUTES =======
String addVehicleRoute = "/api/v1/driver/add-vehicle-details"; // ADD VEHICLE ROUTE
String getVehicleRoute = "/api/v1/driver/vehicles"; // GET VEHICLE ROUTE

// ======== DRIVER ROUTES =========
String addDriverRoute = "/api/v1/coperate/add-vehicle";

// ======= WALLET ROUTES =====
String getTransactionRoute = "/api/v1/driver/transactions"; // GET TRANSACTION Route
String getBanksRoute = "/api/v1/get-banks"; // GET BANKS Route
String getAccountNameRoute = "/api/v1/resolve-account-number"; // GET account name Route
String withdrawalRoute = "/api/v1/driver/withdraw"; // withdraw Route





