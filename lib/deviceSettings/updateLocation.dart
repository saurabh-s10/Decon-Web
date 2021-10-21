import 'package:dweb/deviceSettings/dialogBoxUpdateLocation.dart';
import 'package:flutter/material.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class UpdateLocation extends StatefulWidget {
  @override
  _UpdateLocationState createState() => _UpdateLocationState();
}

class _UpdateLocationState extends State<UpdateLocation> {
  final TextEditingController search = TextEditingController();
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      margin: EdgeInsets.only(left: b * 17, right: b * 32, bottom: h * 55),
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        sh(30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: b * 40),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              flex: 2,
              child: Text(
                "Select device to update location",
                style: txtS(blc, 14, FontWeight.w400),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: dc, width: 0.5),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(b * 60),
                ),
                child: TextField(
                  controller: search,
                  style: TextStyle(fontSize: b * 12, color: dc),
                  decoration: InputDecoration(
                    prefixIcon: InkWell(
                      child: Icon(Icons.search, color: blc),
                      onTap: null,
                    ),
                    isDense: true,
                    isCollapsed: true,
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 35, maxHeight: 30),
                    hintText: 'Search by Device/ ID/ location',
                    hintStyle: TextStyle(
                      fontSize: b * 12,
                      color: Color(0xff858585),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: h * 13, horizontal: b * 10),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ]),
        ),
        sh(15),
        Expanded(
          flex: 4,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              padding:
                  EdgeInsets.symmetric(horizontal: b * 40, vertical: h * 13),
              itemCount: 10,
              itemBuilder: (BuildContext ctxt, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: h * 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: dc, width: 0.5),
                      borderRadius: BorderRadius.circular(h * 10),
                    ),
                    padding:
                        EdgeInsets.fromLTRB(b * 18, h * 11, b * 18, h * 11),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Device 1",
                                  style: txtS(dc, 16, FontWeight.w600),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: dc, width: 0.5),
                                    borderRadius: BorderRadius.circular(b * 2),
                                    color: Color(0xFFffffff),
                                  ),
                                  child: Text(
                                    'ID : C1_S9_D1',
                                    style: txtS(dc, 14, FontWeight.w400),
                                  ),
                                ),
                              ]),
                          sh(5),
                          Text(
                            '981, sunder vihar, Geeta bhawan Road, Sardarpura, Jodhpur, 342003',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: txtS(Color(0xff858585), 14, FontWeight.w500),
                          ),
                        ]),
                  ),
                );
              }),
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              dialogBoxUpdate(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                  bottom: h * 40, left: b * 170, right: b * 170, top: h * 32),
              decoration: BoxDecoration(
                color: selected ? blc : Colors.white,
                border: Border.all(color: blc, width: 0.5),
                borderRadius: BorderRadius.circular(h * 6),
              ),
              alignment: Alignment.center,
              child: Text(
                "Update Location",
                style: txtS(selected ? wc : blc, 18, FontWeight.w500),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
