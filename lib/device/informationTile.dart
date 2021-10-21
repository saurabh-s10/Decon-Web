import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class InformationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;

    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: h * 22),
        padding: EdgeInsets.only(
            top: h * 12, bottom: h * 15, left: b * 12, right: b * 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(h * 10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Device 1",
                  style: txtS(dc, 20, FontWeight.w500),
                ),
                sb(30),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(h * 2),
                    color: dc,
                  ),
                  child: Text(
                    'ID : C1_S9_D1',
                    style: txtS(wc, 14, FontWeight.w400),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: b * 10),
                      height: h * 12,
                      width: b * 12,
                      decoration: BoxDecoration(
                        color: textCol('Informative'),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      "Informative",
                      style: txtS(textCol('Informative'), 16, FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            sh(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  SvgPicture.asset(
                    'images/distance.svg',
                    allowDrawingOutsideViewBox: true,
                  ),
                  sb(5),
                  Text(
                    "0.67 m",
                    style: txtS(blc, 16, FontWeight.w400),
                  ),
                ]),
                Row(children: [
                  Icon(Icons.battery_charging_full, size: b * 16, color: blc),
                  Text(
                    "78 %",
                    style: txtS(blc, 16, FontWeight.w400),
                  ),
                ]),
                Row(children: [
                  Icon(Icons.thermostat_sharp, size: b * 16, color: blc),
                  Text(
                    "67 \u2103",
                    style: txtS(blc, 16, FontWeight.w400),
                  ),
                ]),
                Row(children: [
                  SvgPicture.asset(
                    'images/signal.svg',
                    allowDrawingOutsideViewBox: true,
                  ),
                  sb(5),
                  Text(
                    '3',
                    style: txtS(blc, 16, FontWeight.w400),
                  ),
                ]),
              ],
            ),
            sh(30),
            Text(
              "981, sunder vihar, Geeta bhawan Road, Sardarpura, Jodhpur, 342003",
              style: txtS(dc, 16, FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Color textCol(String level) {
    if (level == "Critical")
      return Color(0xffff2020);
    else if (level == 'Informative')
      return Color(0xffecae37);
    else if (level == 'Normal')
      return Color(0xff69d66d);
    else
      return Color(0xffffffff);
  }
}
