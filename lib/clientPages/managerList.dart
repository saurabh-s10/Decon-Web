import 'package:flutter/material.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';


class ManagerList extends StatefulWidget {
  @override
  _ManagerListState createState() => _ManagerListState();
}

class _ManagerListState extends State<ManagerList> {
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
                "Select a Manager",
                style: txtS(Color(0xff858585), 16, FontWeight.w500),
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
                  style: TextStyle(fontSize: h * 12, color: dc),
                  decoration: InputDecoration(
                    prefixIcon: InkWell(
                      child: Icon(Icons.search, color: blc),
                      onTap: null,
                    ),
                    isDense: true,
                    isCollapsed: true,
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 35, maxHeight: 30),
                    hintText: 'Search by Name',
                    hintStyle: TextStyle(
                      fontSize: h * 14,
                      color: Color(0xff858585),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: h * 17, horizontal: b * 10),
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
                  EdgeInsets.symmetric(horizontal: b * 22, vertical: h * 13),
              itemCount: 10,
              itemBuilder: (BuildContext ctxt, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: h * 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(h * 10),
                    ),
                    padding:
                        EdgeInsets.fromLTRB(b * 22, h * 16, b * 22, h * 16),
                    child: Row(children: [
                      Container(
                        height: h * 45,
                        width: b * 45,
                        decoration: BoxDecoration(
                          color: dc,
                          shape: BoxShape.circle,
                        ),
                      ),
                      sb(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manager Name",
                            style: txtS(blc, 18, FontWeight.w700),
                          ),
                          sh(7),
                          Text(
                            "ritesh.shuklalmp2018@gmail.com",
                            style: txtS(Color(0xff858585), 16, FontWeight.w500),
                          ),
                        ],
                      ),
                    ]),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
