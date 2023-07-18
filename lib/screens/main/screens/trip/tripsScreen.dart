import 'package:cargo_dealers_app/screens/main/screens/trip/tab_views/allTripsViews.dart';
import 'package:cargo_dealers_app/screens/main/screens/trip/tab_views/deliveredViews.dart';
import 'package:cargo_dealers_app/screens/main/screens/trip/tab_views/intransitViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/tripsStateController.dart';

class TripsScreen extends StatelessWidget {
  TripsScreen({Key? key}) : super(key: key);

  final TripsStateController _tripsStateController = Get.put(TripsStateController());

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      _tripsStateController.getTrips();
    });
    return GetBuilder<TripsStateController>(
      builder: (controller) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: const Color(0xFFEFF5ED),
            body: SafeArea(
              child: Container(
                height: Get.height,
                width: Get.width,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    const Text('Trip history',
                        style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 24,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.bold
                    )),
                    const SizedBox(height: 30,),
                    Container(
                      height: 48,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: const Color(0xff609C47),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        unselectedLabelColor: const Color(0xff1D221B),
                        tabs: const [
                          Tab(
                            text: "All",
                          ),
                          Tab(
                            text: "In Transit",
                          ),
                          Tab(
                            text: "Delivered",
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Expanded(
                      child: (controller.isLoading)?
                      const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xff609C47),
                        )
                      )
                      :
                      (controller.tripsList.isEmpty)?
                      const Center(
                        child: Text(
                          "No Trips Available!"
                        )
                      )
                      :
                      TabBarView(
                        children: [
                          AllTripsViews(),
                          InTransitViews(),
                          DeliveredViews()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
