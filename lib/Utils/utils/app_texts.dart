import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';

class AppBarText extends StatelessWidget {
  const AppBarText(
      {Key? key,
      @required this.txt,
      @required this.icon,
      this.isBackButton,
      @required this.actionIcon})
      : super(key: key);

  final String? txt;
  final String? icon;
  final bool? isBackButton;
  final String? actionIcon;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;

    return Padding(
      padding: EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
            child: isBackButton!
                ? InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: secondaryColor,
                    ),
                  )
                : SizedBox(),
          ),
          Spacer(),
          SvgPicture.asset(
            icon!,
            color: secondaryColor,
          ),
          sb(13),
          Text(
            txt!,
            style: TextStyle(
              fontSize: b * 16,
              fontWeight: FontWeight.w700,
              color: secondaryColor,
              letterSpacing: 0.6,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 20,
            child: actionIcon == null
                ? SizedBox()
                : SvgPicture.asset(
                    actionIcon!,
                    color: secondaryColor,
                    width: 20,
                  ),
          ),
        ],
      ),
    );
  }
}
