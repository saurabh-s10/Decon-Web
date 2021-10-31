import 'package:flutter/material.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';

class VehicleDescription extends StatelessWidget {
  const VehicleDescription({Key? key, @required this.txt, this.size})
      : super(key: key);

  final String? txt;
  final double? size;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: b * 10, vertical: h * 8),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(6),
          bottomRight: Radius.circular(6),
        ),
      ),
      child: Text(
        this.txt!,
        style: TextStyle(
          color: secondaryColor,
          fontSize: b * 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
