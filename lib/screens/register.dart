import 'package:flutter/material.dart';
import 'package:jag_cab/providers/auth_provider.dart';
import 'package:jag_cab/screens/login.dart';
import 'package:jag_cab/screens/phone_verify.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController confPwdController = TextEditingController();

  bool isPwdVisible = false;
  bool isConfVisible = false;

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;
    final auth = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: b * 25),
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sh(20),
              Center(
                child: Image.asset(
                  'assets/images/register_illus.png',
                  height: h * 227,
                  width: b * 154,
                ),
              ),
              sh(42),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: b * 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      RegisterAcountLabel,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: b * 18,
                        letterSpacing: 0.5,
                      ),
                    ),
                    sh(25),
                    AppTextField(
                      label: NameLabel,
                      controller: nameController,
                      suffix: null,
                      isVisibilty: null,
                    ),
                    sh(25),
                    AppTextField(
                      label: EmailLabel,
                      controller: emailController,
                      suffix: null,
                      isVisibilty: null,
                    ),
                    sh(25),
                    AppTextField(
                      label: PhoneNoLabel,
                      controller: phoneController,
                      suffix: null,
                      isVisibilty: null,
                      inputType: TextInputType.number,
                    ),
                    sh(25),
                    AppTextField(
                      label: PasswordLabel,
                      controller: pwdController,
                      suffix: InkWell(
                        onTap: () {
                          isPwdVisible = !isPwdVisible;
                          setState(() {});
                        },
                        child: Icon(
                          isPwdVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 22,
                          color: primaryColor,
                        ),
                      ),
                      isVisibilty: !isPwdVisible,
                    ),
                    sh(25),
                    AppTextField(
                      label: CnfmPasswordLabel,
                      controller: confPwdController,
                      suffix: InkWell(
                        onTap: () {
                          isConfVisible = !isConfVisible;
                          setState(() {});
                        },
                        child: Icon(
                          isConfVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 22,
                          color: primaryColor,
                        ),
                      ),
                      isVisibilty: !isConfVisible,
                    ),
                    sh(23),
                    Center(
                      child: AppButton(
                        label: LoginLabel,
                        width: b * 112,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => VerifyPhoneScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    sh(24),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AlreadyAcountLabel + " ",
                            style:
                                TextStyle(fontSize: b * 12, letterSpacing: 0.5),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              LoginLabel,
                              style: TextStyle(
                                fontSize: b * 12,
                                color: secondaryColor,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    sh(30),
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
