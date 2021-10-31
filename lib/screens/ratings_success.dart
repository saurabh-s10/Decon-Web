import 'package:flutter/material.dart';
import 'package:jag_cab/screens/dialogBoxCancel.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';

class RatingSuccessScreen extends StatelessWidget {
  const RatingSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(gradient: buttonGradient),
          child: Column(
            children: [
              AppBarText(
                txt: RatingNReview,
                icon: 'assets/icons/rating_icon.svg',
                actionIcon: null,
                isBackButton: true,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sh(70),
                      Image.asset(
                        'assets/images/rating_illus.png',
                        height: h * 300,
                        width: b * 300,
                      ),
                      sh(58),
                      Text(
                        ThankUFeedback,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: b * 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      sh(60),
                      Center(
                        child: AppButton(
                          label: ContinueLabel,
                          width: b * 140,
                          onPressed: () {
                            dialogBoxCancel(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
