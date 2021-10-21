import 'package:dweb/deviceSettings/updateLocation.dart';
import 'package:flutter/material.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class DeviceSettings extends StatefulWidget {
  @override
  _DeviceSettingsState createState() => _DeviceSettingsState();
}

class _DeviceSettingsState extends State<DeviceSettings> {
  final TextEditingController manhole = TextEditingController();
  final TextEditingController critical = TextEditingController();
  final TextEditingController informative = TextEditingController();
  final TextEditingController normal = TextEditingController();
  final TextEditingController ground = TextEditingController();
  final TextEditingController temperature = TextEditingController();
  final TextEditingController battery = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                sh(160),
                Expanded(
                  child: Row(children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding:
                            EdgeInsets.fromLTRB(b * 40, h * 40, b * 40, h * 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(h * 10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.10),
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(
                            left: b * 32, right: b * 17, bottom: h * 55),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Update device parameters",
                              style: txtS(blc, 16, FontWeight.w400),
                            ),
                            sh(37),
                            Row(children: [
                              Text(
                                "Manhole's Depth",
                                style: txtS(dc, 16, FontWeight.w500),
                              ),
                              Spacer(),
                              Row(children: [
                                containerText(manhole),
                                SizedBox(width: b * 12),
                                textRepeat(),
                              ]),
                            ]),
                            sh(46),
                            Row(children: [
                              Text(
                                "Critical level above",
                                style: txtS(dc, 16, FontWeight.w500),
                              ),
                              Spacer(),
                              Row(children: [
                                containerText(critical),
                                SizedBox(width: b * 12),
                                textRepeat(),
                              ]),
                            ]),
                            sh(13),
                            Row(children: [
                              Text(
                                "Informative level above",
                                style: txtS(dc, 16, FontWeight.w500),
                              ),
                              Spacer(),
                              Row(children: [
                                containerText(informative),
                                SizedBox(width: b * 12),
                                textRepeat(),
                              ]),
                            ]),
                            sh(13),
                            Row(children: [
                              Text(
                                "Normal level above",
                                style: txtS(dc, 16, FontWeight.w500),
                              ),
                              Spacer(),
                              Row(children: [
                                containerText(normal),
                                SizedBox(width: b * 12),
                                textRepeat(),
                              ]),
                            ]),
                            sh(13),
                            Row(children: [
                              Text(
                                "Ground level above",
                                style: txtS(dc, 16, FontWeight.w500),
                              ),
                              Spacer(),
                              Row(children: [
                                containerText(ground),
                                SizedBox(width: b * 12),
                                textRepeat(),
                              ]),
                            ]),
                            sh(43),
                            Row(children: [
                              Text(
                                "Temperature Threshold value",
                                style: txtS(dc, 16, FontWeight.w500),
                              ),
                              Spacer(),
                              Row(children: [
                                containerText(temperature),
                                SizedBox(width: b * 12),
                                Text(
                                  "\u2103           ",
                                  style: TextStyle(
                                    color: Color(0xff9ba1a3),
                                    fontSize: h * 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                            ]),
                            sh(13),
                            Row(children: [
                              Text(
                                "Battery Threshold Value",
                                style: txtS(dc, 16, FontWeight.w500),
                              ),
                              Spacer(),
                              Row(children: [
                                containerText(battery),
                                SizedBox(width: b * 12),
                                Text(
                                  "%          ",
                                  style: txtS(
                                      Color(0xff9ba1a3), 14, FontWeight.w500),
                                )
                              ]),
                            ]),
                            Spacer(),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: b * 140),
                              child: MaterialButton(
                                color: blc,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(h * 6),
                                ),
                                onPressed: () {},
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(vertical: h * 11),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Add Parameters',
                                    style: txtS(wc, 18, FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: UpdateLocation(),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text textRepeat() {
    return Text(
      "Meters",
      style: txtS(Color(0xff9ba1a3), 14, FontWeight.w500),
    );
  }

  Container containerText(TextEditingController controller) {
    var h = SizeConfig.screenHeight / 900;
    
    return Container(
      alignment: Alignment.center,
      width: SizeConfig.screenWidth * 36 / 1440,
      height: SizeConfig.screenHeight * 44 / 900,
      decoration: BoxDecoration(
        color: Color(0xFFe7e7e7),
        borderRadius: BorderRadius.circular(h * 4),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: h * 18, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          isDense: true,
          isCollapsed: true,
          hintText: '0',
          hintStyle: TextStyle(fontSize: h * 18),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
