import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:styled_divider/styled_divider.dart';

import '../../../../../controller/tripsStateController.dart';

class AllTripsViews extends StatelessWidget {
  AllTripsViews({super.key});

  final TripsStateController _tripsStateController = Get.find<TripsStateController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TripsStateController>(
      builder: (controller) {
        return ListView.separated(
          itemBuilder: (context, index){
            return Flexible(
              child: InkWell(
                onTap: () {
                  Get.toNamed(packageInTransitInfoScreen);
                },
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Tracking ID',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  '#98095792354',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 104.0,
                            height: 27.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE1EDDB),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            alignment: const AlignmentDirectional(
                                0.0, -0.09999999999999998),
                            child: const Text(
                            'Intransit',
                              style: TextStyle(
                                color: Color(0xff1D221B),
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Amount Earned',
                          style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 14
                          )
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'N12,000.00',
                          style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
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
                                const SizedBox(
                                  height: 72.0,
                                  child: StyledVerticalDivider(
                                    thickness: 2.0,
                                    color: Color(0xff777B76),
                                    lineStyle: DividerLineStyle.dotted,
                                  ),
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
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            flex: 9,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const Padding(
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
                                const Padding(
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
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
                          ),
              
                        ],
                      ),
                      const SizedBox(height: 20,),
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
                      const Divider(
                        thickness: 1.0,
                        color: Color(0xffD2D3D1),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Kasham Ismaila',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Iconsax.message,
                                color: Color(0xff609C47),
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                Iconsax.call,
                                color: Color(0xff609C47),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }, 
          separatorBuilder: (context, index){
            return const SizedBox(
              height: 20,
            );
          }, 
          itemCount: 4
        );
      }
    );
  }
}