import 'package:cargo_dealers_app/routes/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';

import '../../../../../controller/tripsStateController.dart';

class DeliveredViews extends StatelessWidget {
  DeliveredViews({super.key});

  final TripsStateController _tripsStateController = Get.find<TripsStateController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TripsStateController>(
      builder: (context) {
        return ListView.separated(
          itemBuilder: (context, index){
            return Flexible(
              child: InkWell(
                onTap: () {
                  Get.toNamed(packageCompletedStopsInfoScreen);
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
                              color: const Color(0xff85B870),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            alignment: const AlignmentDirectional(
                                0.0, -0.09999999999999998),
                            child: const Text(
                            'Completed',
                              style: TextStyle(
                                color: Colors.white,
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
                          '₦12,000.00',
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
                                SizedBox(
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