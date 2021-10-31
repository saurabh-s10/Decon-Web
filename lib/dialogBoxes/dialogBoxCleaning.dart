import 'package:flutter/material.dart';
import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class DialogBoxCleaning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;
    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.only(left: b * 563, right: b * 418),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: b * 0, vertical: h * 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            sh(36),
            Padding(
              padding: EdgeInsets.only(left: b * 70),
              child: Text(
                "Are you sure you want to start cleaning now?",
                style: txtS(Colors.black, 20, FontWeight.w700),
              ),
            ),
            sh(70),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: h * 50,
                    width: b * 229,
                    alignment: Alignment.center,
                    child: Text(
                      "NO",
                      style: txtS(Colors.black, 20, FontWeight.w700),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: h * 50,
                    width: b * 230,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: gc,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(h * 6),
                        bottomRight: Radius.circular(h * 10),
                      ),
                    ),
                    child: Text(
                      "YES",
                      style: txtS(Colors.white, 20, FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle txtS(Color col, double siz, FontWeight wg) {
  return TextStyle(
    color: col,
    fontWeight: wg,
    fontSize: SizeConfig.screenHeight * siz / 900,
  );
}

SizedBox sh(double h) {
  return SizedBox(height: SizeConfig.screenHeight * h / 900);
}

void dialogBoxCleaning(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxCleaning();
    },
    animationType: DialogTransitionType.fadeScale,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
