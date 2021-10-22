import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class DialogBoxAddManager extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;
    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.only(left: b * 578, right: b * 379),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.fromLTRB(b * 13, h * 15, b * 13, h * 21),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close, color: blc, size: h * 24),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: txtS(dc, 16, FontWeight.w500),
                  ),
                  sh(6),
                  Container(
                    padding: EdgeInsets.fromLTRB(b * 11, 0, b * 11, 0),
                    width: b * 800,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: blc, width: 0.7),
                      borderRadius: BorderRadius.circular(b * 5),
                    ),
                    child: TextField(
                      controller: name,
                      style: TextStyle(fontSize: b * 14, color: dc),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Enter Latitude',
                        hintStyle: TextStyle(
                          fontSize: b * 14,
                          color: blc.withOpacity(0.25),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  sh(15),
                  Text(
                    "E-Mail",
                    style: txtS(dc, 16, FontWeight.w500),
                  ),
                  sh(6),
                  Container(
                    padding: EdgeInsets.fromLTRB(b * 11, 0, b * 11, 0),
                    width: b * 800,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: blc, width: 0.7),
                      borderRadius: BorderRadius.circular(b * 5),
                    ),
                    child: TextField(
                      controller: email,
                      style: TextStyle(fontSize: b * 14, color: dc),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(
                          fontSize: b * 14,
                          color: blc.withOpacity(0.25),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  sh(15),
                  Text(
                    "Phone Number",
                    style: txtS(dc, 16, FontWeight.w500),
                  ),
                  sh(6),
                  Container(
                    padding: EdgeInsets.fromLTRB(b * 11, 0, b * 11, 0),
                    width: b * 800,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: blc, width: 0.7),
                      borderRadius: BorderRadius.circular(b * 5),
                    ),
                    child: TextField(
                      controller: phone,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: b * 14, color: dc),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Enter Phone Number',
                        hintStyle: TextStyle(
                          fontSize: b * 14,
                          color: blc.withOpacity(0.25),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  sh(26),
                  MaterialButton(
                    color: Color(0xff00A3FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(b * 6),
                    ),
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: b * 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

void dialogBoxAddManager(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxAddManager();
    },
    animationType: DialogTransitionType.scaleRotate,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
