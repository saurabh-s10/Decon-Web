import 'package:dweb/Utils/constants.dart';
import 'package:dweb/loginScreens/otpPage.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../Utils/SizeConfig.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Image.asset('images/logo.png', height: h * 160, width: b * 140),
          sh(60),
          Text(
            'DECON',
            style: TextStyle(
              color: blc,
              fontSize: h * 26,
              fontWeight: FontWeight.w800,
              letterSpacing: 15,
            ),
          ),
          sh(70),
          Container(
            width: SizeConfig.screenWidth,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: b * 520),
            padding: EdgeInsets.symmetric(horizontal: b * 17, vertical: h * 17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(h * 5),
              border: Border.all(color: blc, width: 1),
            ),
            child: TextFormField(
              controller: phone,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  fontSize: h * 20,
                  color: dc,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 22),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Enter Phone Number',
                hintStyle: TextStyle(
                  fontSize: h * 16,
                  color: blc,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                ),
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          sh(17),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 520),
            child: MaterialButton(
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: blc,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(h * 6),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => OtpPage(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: h * 13),
                alignment: Alignment.center,
                width: SizeConfig.screenWidth,
                child: Text(
                  'Proceed',
                  style: txtS(wc, 20, FontWeight.w400),
                ),
              ),
            ),
          ),
          Spacer(),
          _buildCard(
            height: h * 240,
            config: CustomConfig(
              colors: [
                Color(0xffccebff),
                blc,
              ],
              durations: [10000, 6000],
              heightPercentages: [0.4, 0.45],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    Config config,
    double height,
  }) {
    return Container(
      height: height,
      width: double.infinity,
      child: WaveWidget(
        config: config,
        backgroundColor: Colors.transparent,
        size: Size(double.infinity, double.infinity),
        waveAmplitude: 50,
        waveFrequency: 2,
      ),
    );
  }
}
