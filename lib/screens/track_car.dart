import 'package:flutter/material.dart';
import 'package:jag_cab/screens/track_car_map.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';

class TrackCarScreen extends StatelessWidget {
  final TextEditingController idController = TextEditingController();
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
                txt: TrackYrCar,
                icon: 'assets/icons/loc_icon.svg',
                actionIcon: null,
                isBackButton: false,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      sh(45),
                      Image.asset(
                        'assets/images/track_illus.png',
                        height: h * 200,
                        width: b * 152,
                      ),
                      sh(78),
                      Hero(
                        tag: "booking",
                        child: AppTextField(
                          label: EnterYrBookingID,
                          controller: idController,
                          suffix: null,
                          isVisibilty: null,
                        ),
                      ),
                      sh(40),
                      AppButton(
                        label: SubmitLabel,
                        width: b * 112,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TrackCarMapScreen(),
                            ),
                          );
                        },
                      )
                    ],
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
