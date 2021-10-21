import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class DialogBoxConfirmAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;
    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.only(left: b * 578, right: b * 375),
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
              padding: EdgeInsets.symmetric(horizontal: b * 57),
              child: Text(
                "Are you sure you want to add “Manager Name” to “Client Name” as manager?",
                textAlign: TextAlign.center,
                style: txtS(dc, b * 18, FontWeight.w400),
              ),
            ),
            sh(50),
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

void dialogBoxConfirmAdd(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxConfirmAdd();
    },
    animationType: DialogTransitionType.scaleRotate,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
