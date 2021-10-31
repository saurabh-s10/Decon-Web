import 'package:flutter/material.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';

class CongoPage extends StatelessWidget {
  const CongoPage({Key? key, @required this.isUpdate}) : super(key: key);

  final bool? isUpdate;

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
                txt: CheckoutLabel,
                icon: 'assets/icons/checkout_icon.svg',
                actionIcon: null,
                isBackButton: true,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 11),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      sh(46),
                      Text(
                        CongratulationsLabel,
                        style: TextStyle(
                          fontSize: b * 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sh(54),
                      Image.asset(
                        'assets/images/congo_illus.png',
                        height: h * 190,
                        width: b * 353,
                      ),
                      sh(80),
                      Text(
                        !isUpdate! ? ConfirmMsg : UpdateMsg,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: b * 20,
                        ),
                      ),
                      sh(24),
                      Text(
                        ThankUMsg,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: b * 20,
                        ),
                      ),
                      sh(80),
                      AppButton(
                        label: ContinueLabel,
                        width: b * 139,
                        onPressed: () {},
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
