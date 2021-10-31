import 'package:flutter/material.dart';
import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class DialogBoxAddTool extends StatelessWidget {
  final TextEditingController toolName = TextEditingController();
  final TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: yc, width: h * 1),
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Container(
        width: b * 389,
        padding: EdgeInsets.symmetric(horizontal: b * 0, vertical: h * 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            sh(10),
            Container(
              width: b * 368,
              height: h * 45,
              margin: EdgeInsets.symmetric(horizontal: b * 10),
              padding: EdgeInsets.symmetric(horizontal: b * 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: yc.withOpacity(0.25),
                borderRadius: BorderRadius.circular(h * 6),
              ),
              child: TextField(
                controller: toolName,
                style: txtS(gc, 18, FontWeight.w500),
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintStyle: txtS(yc, 18, FontWeight.w500),
                  hintText: 'Tool Name',
                ),
              ),
            ),
            sh(15),
            Container(
              width: b * 368,
              height: h * 45,
              margin: EdgeInsets.symmetric(horizontal: b * 10),
              padding: EdgeInsets.symmetric(horizontal: b * 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: yc.withOpacity(0.25),
                borderRadius: BorderRadius.circular(h * 6),
              ),
              child: TextField(
                controller: number,
                style: txtS(gc, 18, FontWeight.w500),
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintStyle: txtS(yc, 18, FontWeight.w500),
                  hintText: 'Number',
                ),
              ),
            ),
            sh(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: b * 150,
                  height: h * 42,
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: h * 42,
                    width: b * 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(h * 6),
                      color: gc,
                    ),
                    child: Text(
                      'Save',
                      style: txtS(Colors.white, 18, FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(width: b * 10),
              ],
            ),
            sh(9),
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

void dialogBoxAddTool(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.9),
    builder: (BuildContext context) {
      return DialogBoxAddTool();
    },
    animationType: DialogTransitionType.fadeScale,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
