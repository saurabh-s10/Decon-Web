import 'package:dweb/deviceSettings/dialogBoxManual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class DialogBoxUpdate extends StatelessWidget {
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
          child: Column(children: [
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
                onTap: () {
                  Navigator.pop(context);
                  dialogBoxManual(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: h * 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: blc),
                    borderRadius: BorderRadius.circular(h * 6),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Manual Update',
                    style: txtS(blc, 18, FontWeight.w500),
                  ),
                ),
              ),
            ),
            sh(15),
            Text(
              "OR",
              textAlign: TextAlign.center,
              style: txtS(dc, 18, FontWeight.w400),
            ),
            Text(
              "Are You sure?\nLocation of Device 1 is :",
              textAlign: TextAlign.center,
              style: txtS(dc, 18, FontWeight.w500),
            ),
            sh(12),
            Container(
              margin: EdgeInsets.symmetric(horizontal: b * 23),
              padding:
                  EdgeInsets.symmetric(horizontal: b * 70, vertical: h * 14.5),
              decoration: BoxDecoration(
                color: Color(0xfff1f1f1),
                borderRadius: BorderRadius.circular(h * 6),
              ),
              child: Text(
                "981, sunder vihar, Geeta bhawan Road, Sardarpura, Jodhpur, 342003",
                textAlign: TextAlign.center,
                style: txtS(dc, 14, FontWeight.w400),
              ),
            ),
            sh(30),
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
                        onPressed: () {},
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

void dialogBoxUpdate(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxUpdate();
    },
    animationType: DialogTransitionType.scaleRotate,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
