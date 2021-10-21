import 'package:dweb/deviceSettings/dialogBoxDone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class DialogBoxManual extends StatelessWidget {
  final TextEditingController latitude = TextEditingController();
  final TextEditingController longitude = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;

    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: b * 476.5),
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
              padding: EdgeInsets.symmetric(horizontal: b * 23),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: h * 10),
                  decoration: BoxDecoration(
                    color: blc,
                    borderRadius: BorderRadius.circular(h * 6),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Manual Update',
                    style: txtS(wc, 18, FontWeight.w500),
                  ),
                ),
              ),
            ),
            sh(15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 23),
              child: Text(
                "Latitude",
                style: txtS(dc, 16, FontWeight.w500),
              ),
            ),
            sh(6),
            Container(
              margin: EdgeInsets.symmetric(horizontal: b * 23),
              padding: EdgeInsets.fromLTRB(b * 11, 0, 0, 0),
              width: b * 800,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                border: Border.all(color: blc, width: 0.7),
                borderRadius: BorderRadius.circular(b * 5),
              ),
              child: TextField(
                controller: latitude,
                style: TextStyle(fontSize: b * 14, color: blc),
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
            sh(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 23),
              child: Text(
                "Longitude",
                style: txtS(dc, 16, FontWeight.w500),
              ),
            ),
            sh(6),
            Container(
              margin: EdgeInsets.symmetric(horizontal: b * 23),
              padding: EdgeInsets.fromLTRB(b * 11, 0, 0, 0),
              width: b * 800,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                border: Border.all(color: blc, width: 0.7),
                borderRadius: BorderRadius.circular(b * 5),
              ),
              child: TextField(
                controller: longitude,
                style: TextStyle(fontSize: b * 14, color: blc),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Enter Longitude',
                  hintStyle: TextStyle(
                    fontSize: b * 14,
                    color: blc.withOpacity(0.25),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            sh(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 23),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        color: Color(0xff00A3FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(h * 6),
                        ),
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                          dialogBoxDone(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Yes, Update',
                            style: txtS(wc, 18, FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'No',
                            style: txtS(blc, 18, FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ]),
            )
          ]),
        ),
      ]),
    );
  }
}

void dialogBoxManual(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxManual();
    },
    animationType: DialogTransitionType.scaleRotate,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
