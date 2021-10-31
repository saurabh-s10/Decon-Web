import 'package:flutter/material.dart';
import 'package:jag_cab/screens/home_page.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({Key? key}) : super(key: key);

  @override
  _VerifyPhoneScreenState createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  bool isOTPSent = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: b * 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sh(30),
              Center(
                child: Image.asset(
                  'assets/images/verify_phone_illus.png',
                  height: h * 227,
                ),
              ),
              sh(42),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: b * 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TwoStepVerifyLabel,
                      style: TextStyle(
                        fontSize: b * 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                    sh(32),
                    AppTextField(
                      label: EnterPhoneLabel,
                      controller: phoneController,
                      suffix: null,
                      isVisibilty: null,
                      inputType: TextInputType.number,
                    ),
                    isOTPSent
                        ? SizedBox(
                            height: 20,
                          )
                        : SizedBox(),
                    isOTPSent
                        ? AppTextField(
                            label: EnterOTPLabel,
                            controller: otpController,
                            suffix: null,
                            isVisibilty: null,
                          )
                        : SizedBox(),
                    sh(50),
                    Center(
                      child: AppButton(
                        label: !isOTPSent ? SubmitLabel : "VERIFY",
                        width: b * 112,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );

                          isOTPSent = true;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
