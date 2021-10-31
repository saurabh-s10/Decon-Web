import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/widgets/app_button.dart';

class DialogBoxCancel extends StatefulWidget {
  @override
  _DialogBoxCancelState createState() => _DialogBoxCancelState();
}

class _DialogBoxCancelState extends State<DialogBoxCancel> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: b * 40),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(b * 20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 25, vertical: h * 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Do you want to cancel this booking?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: b * 14,
                    letterSpacing: 0.45,
                  ),
                ),
                sh(18),
                Text(
                  "Cancellation Fee?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: b * 14,
                    color: primaryColor,
                    letterSpacing: 0.45,
                  ),
                ),
                sh(8),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non volutpat eget donec tellus id sed. Varius nunc in faucibus duis consectetur ullamcorper. A amet sit.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: b * 12,
                    color: Colors.black.withOpacity(0.8),
                    letterSpacing: 0.6,
                  ),
                ),
                sh(16),
                Text(
                  "Refund Amount",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: b * 14,
                    color: primaryColor,
                    letterSpacing: 0.45,
                  ),
                ),
                sh(8),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non volutpat eget donec tellus id sed. Varius nunc in faucibus duis consectetur ullamcorper. A amet sit.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: b * 12,
                    color: Colors.black.withOpacity(0.8),
                    letterSpacing: 0.6,
                  ),
                ),
                sh(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: b * 62,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Yes",
                          style: TextStyle(
                            letterSpacing: 0.6,
                            fontSize: b * 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    AppButton(
                      label: "No",
                      width: b * 54,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                sh(5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void dialogBoxCancel(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.white.withOpacity(0.6),
    builder: (BuildContext context) {
      return DialogBoxCancel();
    },
    animationType: DialogTransitionType.fadeScale,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 300),
  );
}
