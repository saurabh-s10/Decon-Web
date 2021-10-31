import 'package:flutter/material.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_text_field.dart';

class TrackCarMapScreen extends StatefulWidget {
  const TrackCarMapScreen({Key? key}) : super(key: key);

  @override
  _TrackCarMapScreenState createState() => _TrackCarMapScreenState();
}

class _TrackCarMapScreenState extends State<TrackCarMapScreen> {
  TextEditingController idController = TextEditingController();

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
                txt: TrackYrCar,
                icon: 'assets/icons/loc_icon.svg',
                actionIcon: null,
                isBackButton: false,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sh(22),
                      Padding(
                        padding: EdgeInsets.only(right: b * 100),
                        child: Hero(
                          tag: "booking",
                          child: AppTextField(
                            label: EnterYrBookingID,
                            controller: idController,
                            isVisibilty: null,
                            suffix: null,
                            minLines: 1,
                            size: b * 12,
                          ),
                        ),
                      ),
                      sh(17),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              RemainingTimeLabel,
                              style: TextStyle(fontSize: b * 12),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              RemainingDistanceLabel,
                              style: TextStyle(fontSize: b * 12),
                            ),
                          )
                        ],
                      ),
                      sh(15),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "00 : 10 : 29",
                              style: TextStyle(
                                fontSize: b * 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "10 km",
                              style: TextStyle(
                                fontSize: b * 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                      sh(24),
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
