import 'package:flutter/material.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController newPwdController = TextEditingController();
  TextEditingController confPwdController = TextEditingController();

  bool isPwdVisible = false;
  bool isConfPwdVisible = false;

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
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios, size: b * 18),
              ),
              Center(
                child: Image.asset(
                  'assets/images/forgot_pass.png',
                  height: h * 227,
                  width: b * 250,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: b * 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sh(42),
                    Text(
                      ResetPasswordLabel,
                      style: TextStyle(
                        fontSize: b * 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                    sh(32),
                    AppTextField(
                      label: NewPassword,
                      controller: newPwdController,
                      suffix: InkWell(
                        onTap: () {
                          isPwdVisible = !isPwdVisible;
                          setState(() {});
                        },
                        child: Icon(
                          !isPwdVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 22,
                          color: primaryColor,
                        ),
                      ),
                      isVisibilty: isPwdVisible,
                    ),
                    sh(30),
                    AppTextField(
                        label: CnfmPasswordLabel,
                        controller: confPwdController,
                        suffix: InkWell(
                          onTap: () {
                            isConfPwdVisible = !isConfPwdVisible;
                            setState(() {});
                          },
                          child: Icon(
                            !isConfPwdVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 22,
                            color: primaryColor,
                          ),
                        ),
                        isVisibilty: isConfPwdVisible),
                    sh(45),
                    Center(
                      child: AppButton(
                        label: SubmitLabel,
                        width: b * 112,
                        onPressed: () {},
                      ),
                    ),
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
