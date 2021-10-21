import 'package:dweb/appBar.dart';
import 'package:dweb/device/informationTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class Devices extends StatefulWidget {
  _DevicesState createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              TitleBar(),
              Expanded(
                child: Row(children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding:
                          EdgeInsets.fromLTRB(b * 0, h * 15, b * 0, h * 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(h * 10),
                        color: Colors.white,
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black.withOpacity(0.10),
                        //     blurRadius: 20,
                        //     spreadRadius: 0,
                        //     offset: Offset(0, 0),
                        //   ),
                        // ],
                      ),
                      margin: EdgeInsets.only(
                          left: b * 32, right: b * 21.5, bottom: h * 55),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: b * 18),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: dc, width: 0.5),
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(h * 60),
                                    ),
                                    child: TextField(
                                      controller: search,
                                      style: txtS(dc, 16, FontWeight.w500),
                                      decoration: InputDecoration(
                                        prefixIcon: InkWell(
                                          child: Icon(Icons.search,
                                              color: Colors.black),
                                          onTap: null,
                                        ),
                                        isDense: true,
                                        isCollapsed: true,
                                        prefixIconConstraints: BoxConstraints(
                                            minWidth: 40, maxHeight: 24),
                                        hintText: 'Search Devices',
                                        hintStyle: txtS(Color(0xff858585), 16,
                                            FontWeight.w400),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: h * 14,
                                            horizontal: b * 20),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                sb(30),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    child: Container(
                                      height: h * 45,
                                      width: b * 45,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: b * 28),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border:
                                            Border.all(color: blc, width: 0.5),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        'images/filter.svg',
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          sh(15),
                          Expanded(
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(
                                    horizontal: b * 22, vertical: h * 13),
                                itemCount: 25,
                                itemBuilder: (BuildContext ctxt, int index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: InformationTile(),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(b * 0, h * 9, b * 0, h * 27),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(h * 10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.10),
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(
                          left: b * 21.5, right: b * 32, bottom: h * 55),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sh(29),

                            // Padding(
                            //   padding: EdgeInsets.symmetric(horizontal: b * 26),
                            //   child: InformationTile(),
                            // ),
                            // sh(15),
                            // Padding(
                            //   padding: EdgeInsets.symmetric(horizontal: b * 26),
                            //   child: Text(
                            //     "Last Updated : 28/nov/2019",
                            //     style: txtS(
                            //         Color(0xff5c6266), 12, FontWeight.w400),
                            //   ),
                            // ),
                            // sh(20),
                            // Expanded(
                            //   child: ListView.builder(
                            //       padding: EdgeInsets.symmetric(
                            //           horizontal: b * 26, vertical: h * 30),
                            //       itemCount: 2,
                            //       shrinkWrap: true,
                            //       physics: BouncingScrollPhysics(),
                            //       itemBuilder:
                            //           (BuildContext context, int index) {
                            //         return Padding(
                            //           padding: EdgeInsets.only(bottom: h * 20),
                            //           child: Image.asset('images/stats.jpg'),
                            //         );
                            //       }),
                            // ),

                            //for no data
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: b * 21),
                              child: Row(
                                children: [
                                  Text(
                                    "Device 1",
                                    style: txtS(dc, 20, FontWeight.w700),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: h * 2, horizontal: b * 4),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 2),
                                      color: dc,
                                    ),
                                    child: Text(
                                      'ID : C1_S9_D1',
                                      style: txtS(wc, 14, FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            sh(132),
                            Center(
                              child: Image.asset('images/noData.png',
                                  width: b * 350, height: h * 270),
                            ),
                            Spacer(),
                            Center(
                              child: Text(
                                "No data received in 15 days",
                                style: txtS(blc, 14, FontWeight.w400),
                              ),
                            ),
                            sh(14),
                            Row(
                              children: [
                                Spacer(flex: 2),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: h * 14),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 5),
                                      color: Color(0xfff1f1f1),
                                      border:
                                          Border.all(color: blc, width: 0.5),
                                    ),
                                    child: Text(
                                      "View Old Stats",
                                      style: txtS(dc, 14, FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Spacer(flex: 2),
                              ],
                            ),
                            Spacer(),
                          ]),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
