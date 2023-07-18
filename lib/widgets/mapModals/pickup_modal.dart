import 'package:cargo_dealers_app/widgets/mapModals/pickup_arrival_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';

class PickUpModal {
  static showPickUpModal() {
    Get.bottomSheet(
      Container(
        height: 420,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      Row(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFF85B870),
                                  ),
                                ),
                                child: Container(
                                  width: 30.0,
                                  height: 30.0,
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
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Kasham Ismaila wants a pickup',
                                      style: TextStyle(
                                        color: Color(0xff1D221B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    Text(
                                      '24 min to pickup',
                                      style: TextStyle(
                                        color: Color(0xff777B76),
                                        fontSize: 14,
                                      )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFE1EDDB),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  'assets/images/readingGlasses.png',
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Books/Stationaries',
                                    style: TextStyle(
                                      color: Color(0xff1D221B),
                                      fontSize: 16
                                    )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 6.0,
                                  ),
                                ),
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    height: 72.0,
                                    child: StyledVerticalDivider(
                                      thickness: 2.0,
                                      color: Color(0xff777B76),
                                      lineStyle: DividerLineStyle.dotted,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFF85B870),
                                    width: 6.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Pickup - 10/08/2022',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  '14 Teme Street, Tenbury Wells, WR15 8BA',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        'Delivery - 15/08/2022',
                                        style: TextStyle(
                                          color: Color(0xff1D221B),
                                          fontSize: 14
                                        )
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        '14 Teme Street, Tenbury Wells, WR15 8BA',
                                        style: TextStyle(
                                          color: Color(0xff1D221B),
                                          fontSize: 14
                                        )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: SizedBox(
                    height: 48,
                    width: Get.width,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.back();
                        PickUpArrivalModal.showPickUpArrivalModal();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff85B870),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                        ),
                        elevation: 0
                      ),
                      child: const Text(
                        "Accept",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        )
                      )
                    ),
                  ),
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