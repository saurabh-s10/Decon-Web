import 'package:flutter/material.dart';
import 'package:jag_cab/screens/bookingHistory.dart';
import 'package:jag_cab/screens/checkOut.dart';
import 'package:jag_cab/screens/forgot_password.dart';
import 'package:jag_cab/screens/home_page.dart';
import 'package:jag_cab/screens/register.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  bool isVisibilty = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: b * 30, vertical: h * 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "SKIP",
                  style:
                      TextStyle(fontSize: b * 12, fontWeight: FontWeight.w500),
                ),
              ),
              sh(21),
              Image.asset(
                'assets/images/login_illus.png',
                width: b * 300,
                height: h * 227,
              ),
              sh(32),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: b * 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "$LoginLabel ",
                            style: TextStyle(
                              fontSize: b * 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                              height: 1,
                            ),
                          ),
                          Text(
                            '$OrLabel ',
                            style: TextStyle(
                              fontSize: b * 14,
                              letterSpacing: 0.5,
                              height: 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );
                            },
                            child: Text(
                              RegisterLabel,
                              style: TextStyle(
                                fontSize: b * 14,
                                color: secondaryColor,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                                height: 1,
                              ),
                            ),
                          )
                        ],
                      ),
                      sh(29),
                      AppTextField(
                        label: EnterEmail,
                        controller: emailController,
                        suffix: null,
                        isVisibilty: null,
                      ),
                      sh(27),
                      AppTextField(
                        label: PasswordLabel,
                        controller: pwdController,
                        isVisibilty: isVisibilty,
                        suffix: InkWell(
                          onTap: () {
                            isVisibilty = !isVisibilty;
                            setState(() {});
                          },
                          child: Icon(
                            !isVisibilty
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 22,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      sh(24),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          ForgotPasswordLabel + "?",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: secondaryColor,
                            fontSize: b * 12,
                            letterSpacing: 0.45,
                          ),
                        ),
                      ),
                      sh(21),
                      Row(
                        children: [
                          Icon(Icons.check_box_outline_blank),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'By creating your account, you agree to the',
                                style: TextStyle(fontSize: b * 10),
                              ),
                              sh(2),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'Terms & conditions',
                                      style: TextStyle(
                                        fontSize: b * 10,
                                        color: secondaryColor,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    ' and ',
                                    style: TextStyle(fontSize: b * 10),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'privacy policies',
                                      style: TextStyle(
                                        fontSize: b * 10,
                                        color: secondaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      sh(34),
                      Center(
                        child: AppButton(
                          label: LoginLabel,
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          width: b * 180,
                        ),
                      ),
                      sh(16),
                      Center(
                        child: Text(
                          OrLabel.toUpperCase(),
                          style: TextStyle(fontSize: b * 12),
                        ),
                      ),
                      sh(13),
                      Center(
                        child: MaterialButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                          },
                          padding: EdgeInsets.symmetric(vertical: h * 10),
                          elevation: 3,
                          minWidth: b * 180,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: Colors.white,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/fb-icon.png',
                                height: h * 20,
                                width: b * 20,
                              ),
                              sb(18),
                              Text(
                                "Login with Facebook",
                                style: TextStyle(
                                  fontSize: b * 10,
                                  letterSpacing: 0.6,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(vertical: h * 10),
                          elevation: 3,
                          minWidth: b * 180,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: Colors.white,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google-icon.png',
                                height: h * 20,
                                width: b * 20,
                              ),
                              sb(18),
                              Text(
                                "Login with Google",
                                style: TextStyle(
                                  fontSize: b * 10,
                                  letterSpacing: 0.6,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
