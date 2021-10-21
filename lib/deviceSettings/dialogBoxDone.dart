import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class DialogBoxDone extends StatelessWidget {
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
            Transform.translate(
              offset: Offset(0, -20),
              child: Image.asset(
                'images/update.png',
                height: h * 200,
              ),
            ),
            Text(
              "You are Done",
              style: txtS(dc, 18, FontWeight.w500),
            ),
            sh(7),
            Text(
              "Settings are Updated",
              style: txtS(Color(0xff9ba1a3), 16, FontWeight.w400),
            ),
            sh(12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 23),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: h * 12),
                  decoration: BoxDecoration(
                    color: Color(0xffe7e7e7),
                    borderRadius: BorderRadius.circular(h * 6),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Close',
                    style: txtS(dc, 18, FontWeight.w500),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

void dialogBoxDone(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxDone();
    },
    animationType: DialogTransitionType.scaleRotate,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
