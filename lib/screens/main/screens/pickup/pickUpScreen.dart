import 'package:cargo_dealers_app/controller/authStateController.dart';
import 'package:cargo_dealers_app/storage/secureStorage.dart';
import 'package:cargo_dealers_app/widgets/mapModals/pickup_modal.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:location/location.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../../../../routes/api_routes.dart';

class PickUpScreen extends StatefulWidget {
  PickUpScreen({Key? key}) : super(key: key);

  @override
  _PickUpScreenState createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(6.524379, 3.379206),
    zoom: 15.0,
  );
  late GoogleMapController googleMapController;
  late BitmapDescriptor mapMarker;
  LocationData? currentLocation;
  Set<Marker> markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      googleMapController = controller;
    });
  }

  Future<void> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Geolocator.openLocationSettings();
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately. 
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
    } 
    setState(() {
      this.currentLocation = currentLocation;
    });
  } 

  late IO.Socket _socket;

  void _connectSocket() async {
    var token = await LocalStorage().fetchUserToken();
    final auth = {
      "Authorization": "Bearer $token",
    };
    _socket = IO.io(
      baseUrl,
      IO.OptionBuilder()
          .setTransports(["websocket"])
          .setExtraHeaders(auth)
          .build(),
    );
    _socket.onConnect((data) => print("Connected!!!!"));
    _socket.onConnectError((data) => print("ConnectError!!!!: $data"));
    _socket.onDisconnect((data) => print("Disconnected!!!!"));
  }

  @override
  void initState() {
    super.initState();
    // _getLocation();
    _connectSocket();
  }

  @override
  void dispose() {
    _socket.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEFF5ED),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 66,
                  width: Get.width,
                  color: const Color(0xffFCFDFC),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                      ),
                      Container(
                        height: 34,
                        width: 169,
                        decoration: BoxDecoration(
                          color: const Color(0xff85B870),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            "Online",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          PickUpModal.showPickUpModal();
                        },
                        child: const Icon(
                          Iconsax.scan,
                          size: 30,
                          color: Color(0xff609C47),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(0, 0), // Set a default position
                        zoom: 12,
                      ),
                      myLocationEnabled: true,
                      compassEnabled: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

}
