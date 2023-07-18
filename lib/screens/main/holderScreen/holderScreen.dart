import 'package:cargo_dealers_app/screens/main/screens/coperateAccount/accountScreen.dart';
import 'package:cargo_dealers_app/screens/verification/kyc_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controller/authStateController.dart';
import '../screens/account/accountScreen.dart';
import '../screens/pickup/pickUpScreen.dart';
import '../screens/trip/tripsScreen.dart';
import '../screens/wallet/walletScreen.dart';

class HolderScreen extends StatefulWidget {
  const HolderScreen({Key? key}) : super(key: key);

  @override
  State<HolderScreen> createState() => _HolderScreenState();
}

  final AuthStateController _authStateController = Get.find<AuthStateController>();

  List<Widget> _screens = [
    PickUpScreen(),
    WalletScreen(),
    TripsScreen(),
    AccountScreen(),
    CorperateAccountScreen()
  ];

  int _selectedScreenIndex = 0;

class _HolderScreenState extends State<HolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [   
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedScreenIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _selectedScreenIndex == 0? Iconsax.box : Iconsax.box,
                      color: _selectedScreenIndex == 0? Color(0xff85B870) : Color(0xff777B76),
                      size: 25,
                    ),
                    Text(
                      "Pickup",
                      style:TextStyle(
                        color: _selectedScreenIndex == 0? Color(0xff85B870) : Color(0xff777B76),
                        fontSize: 13
                      ) ,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedScreenIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _selectedScreenIndex == 1? Iconsax.wallet : Iconsax.wallet,
                      color: _selectedScreenIndex == 1? Color(0xff85B870) : Color(0xff777B76),
                      size: 25,
                    ),
                    Text(
                      "Wallet",
                      style:TextStyle(
                        color: _selectedScreenIndex == 1? Color(0xff85B870) : Color(0xff777B76),
                        fontSize: 13
                      ) ,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedScreenIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _selectedScreenIndex == 2? Iconsax.map : Iconsax.map,
                      color: _selectedScreenIndex == 2? Color(0xff85B870) : Color(0xff777B76),
                      size: 25,
                    ),
                    Text(
                      "Trips",
                      style:TextStyle(
                        color: _selectedScreenIndex == 2? Color(0xff85B870) : Color(0xff777B76),
                        fontSize: 13
                      ) ,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    (_authStateController.selectedType == "regular-driver")?
                    _selectedScreenIndex = 3
                    :
                    _selectedScreenIndex = 4;
                  });
                },
                child: (_authStateController.selectedType == "regular-driver")?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _selectedScreenIndex == 3? Iconsax.user : Iconsax.user,
                      color: _selectedScreenIndex == 3? Color(0xff85B870) : Color(0xff777B76),
                      size: 25,
                    ),
                    Text(
                      "Account",
                      style:TextStyle(
                        color: _selectedScreenIndex == 3? Color(0xff85B870) : Color(0xff777B76),
                        fontSize: 13
                      ) ,
                    )
                  ],
                )
                :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _selectedScreenIndex == 4? Iconsax.user : Iconsax.user,
                      color: _selectedScreenIndex == 4? Color(0xff85B870) : Color(0xff777B76),
                      size: 25,
                    ),
                    Text(
                      "Account",
                      style:TextStyle(
                        color: _selectedScreenIndex == 4? Color(0xff85B870) : Color(0xff777B76),
                        fontSize: 13
                      ) ,
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}