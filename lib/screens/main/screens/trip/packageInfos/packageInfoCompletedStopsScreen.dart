import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';

class PackageInfoCompletedStopsScreen extends StatelessWidget {
  const PackageInfoCompletedStopsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5ED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Iconsax.arrow_left,
                        size: 30, color: Color(0xff85B870)),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text('Package Information',
                      style: TextStyle(
                        color: Color(0xff1D221B),
                        fontSize: 24,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.bold
                    )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
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
                    Column(
                      children: [
                        const Padding(
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
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0, 8.0, 0.0, 24.0),
                      child: Text(
                        'Progress',
                        style: TextStyle(
                          color: Color(0xff1D221B),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFF85B870),
                                      width: 6.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    SizedBox(
                                      height: 26.0,
                                      child: StyledVerticalDivider(
                                        thickness: 2.0,
                                        color: Color(0xff777B76),
                                        lineStyle:
                                            DividerLineStyle.dotted,
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    SizedBox(
                                      height: 26.0,
                                      child: StyledVerticalDivider(
                                        thickness: 2.0,
                                        color: Color(0xff777B76),
                                        lineStyle:
                                            DividerLineStyle.dotted,
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
                                      color: Color(0xFF85B870),
                                      width: 6.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    SizedBox(
                                      height: 26.0,
                                      child: StyledVerticalDivider(
                                        thickness: 2.0,
                                        color: Color(0xff777B76),
                                        lineStyle:
                                            DividerLineStyle.dotted,
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
                                      color: Color(0xFF85B870),
                                      width: 6.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    SizedBox(
                                      height: 26.0,
                                      child: StyledVerticalDivider(
                                        thickness: 2.0,
                                        color: Color(0xff777B76),
                                        lineStyle:
                                            DividerLineStyle.dotted,
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
                                      color: Color(0xFF85B870),
                                      width: 6.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    SizedBox(
                                      height: 26.0,
                                      child: StyledVerticalDivider(
                                        thickness: 2.0,
                                        color: Color(0xff777B76),
                                        lineStyle:
                                            DividerLineStyle.dotted,
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
                                    color: Color(0xff1D221B),
                                      width: 6.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              22.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Rider arrived at pickup',
                                style: TextStyle(
                                  color: Color(0xff1D221B),
                                  fontSize: 14
                                )
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Item picked up',
                                    style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Package in transit',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'First Stop',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Second Stop',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Package Delivered',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 138.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 16.0),
                          child: Text(
                            'Receiver Information',
                            style: TextStyle(
                              color: Color(0xff1D221B),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffE1EDDB),
                                      shape: BoxShape.circle
                                    ),
                                    child: const Icon(
                                      Iconsax.user,
                                      color: const Color(0xff609C47),
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        const Text(
                                          'Adinoyi Ismaila',
                                          style: TextStyle(
                                            color: Color(0xff1D221B),
                                            fontSize: 12
                                          )
                                        ),
                                        const Text(
                                          '14 Elizabeth Drive, Capel Le Ferne, CT18 7NA',
                                          style: TextStyle(
                                            color: Color(0xff777B76),
                                            fontSize: 12
                                          )
                                        ),
                                        Text(
                                          '+234 817950028',
                                          style: TextStyle(
                                            color: Color(0xff777B76),
                                            fontSize: 12
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 224.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
                        child: Text(
                          'Package Information',
                            style: TextStyle(
                            color: Color(0xff1D221B),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 172.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Category:',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                                Text(
                                  'Books/Stationaries',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14 ,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Quantity:',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                                Text(
                                  '2 Boxes',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Dimensions:',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                                Text(
                                  '(20*20) cm, 40lbs',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Handling Details:',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14
                                  )
                                ),
                                const Text(
                                  'Item is Fragile',
                                  style: TextStyle(
                                    color: Color(0xff1D221B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
