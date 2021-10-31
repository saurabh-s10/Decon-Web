import 'package:flutter/material.dart';
import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class DialogBoxManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;
    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.only(left: b * 647, right: b * 449),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: b * 20, vertical: h * 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Plants Under You",
              style: txtS(Colors.black, 20, FontWeight.w700),
            ),
            sh(20),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: h * 76 * 3,
              ),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: h * 75,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: h * 40,
                                  width: b * 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: gc,
                                  ),
                                ),
                                SizedBox(width: b * 12),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Binod Solar Power Plant",
                                        style: txtS(
                                            Colors.black, 18, FontWeight.w400),
                                      ),
                                      sh(2),
                                      Text(
                                        "Jodhpur Rajasthan",
                                        style: txtS(gc, 14, FontWeight.w400),
                                      ),
                                    ]),
                              ]),
                        ),
                        Container(color: yc, height: h * 0.3)
                      ],
                    );
                  }),
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

void dialogBoxManager(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxManager();
    },
    animationType: DialogTransitionType.fadeScale,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
