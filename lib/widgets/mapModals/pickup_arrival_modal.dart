import 'package:cargo_dealers_app/widgets/mapModals/pickup_location_reaches_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';

class PickUpArrivalModal {
  static showPickUpArrivalModal() {
    Get.bottomSheet(
      Container(
        height: 176,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 56.0,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff1D221B),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFEFF5ED),
                        width: 2.0,
                      ),
                    ),
                    child: const Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'KI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Arriving in 24 mins',
                      style: TextStyle(
                        color: Color(0xff1D221B),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                width: Get.width,
                child: ElevatedButton(
                  onPressed: (){
                    Get.back();
                    PickUpLocationArrivedModal.showPickUpLocationArrivedModal();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE1EDDB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)
                    ),
                    elevation: 0
                  ),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    )
                  )
                ),
              ),
            ],
          ),
        ),
      ),
      isScrollControlled: true
    );
  }
}