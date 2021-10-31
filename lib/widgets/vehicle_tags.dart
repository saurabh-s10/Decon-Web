import 'package:flutter/material.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';

class VehicleTags extends StatelessWidget {
  const VehicleTags({Key? key, @required this.txt, this.size})
      : super(key: key);

  final String? txt;
  final double? size;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: b * 7.5, vertical: h * 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: secondaryColor),
      ),
      child: Text(
        txt!,
        style: TextStyle(
          fontSize: size ?? b * 8,
          color: Colors.black.withOpacity(0.8),
        ),
      ),
    );
  }
}
