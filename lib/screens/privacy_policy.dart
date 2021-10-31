import 'package:flutter/material.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(gradient: buttonGradient),
          child: Column(
            children: [
              AppBarText(
                txt: PrivacyPolicyLabel,
                icon: 'assets/icons/privacy_icon.svg',
                actionIcon: null,
                isBackButton: true,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sh(42),
                        Text(
                          LastUpdate + ": 24 May 2021",
                          style: TextStyle(
                            fontSize: b * 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6,
                          ),
                        ),
                        sh(25),
                        Text(
                          CompanyPrivacy,
                          style: TextStyle(
                            fontSize: b * 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6,
                          ),
                        ),
                        sh(21),
                        Text(
                          DummyTnC,
                          style: TextStyle(
                            fontSize: b * 10,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.6,
                            height: 1.4,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
