import 'package:flutter/material.dart';
import 'package:jag_cab/utils/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {@required this.label, @required this.width, @override this.onPressed});

  final String? label;
  final double? width;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: buttonGradient,
          borderRadius: BorderRadius.circular(8),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.25),
          //     spreadRadius: 0,
          //     blurRadius: 4,
          //     offset: Offset(0, 4),
          //   ),
          // ],
        ),
        child: Text(
          label!.toUpperCase(),
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class LoadingButton extends StatelessWidget {
  const LoadingButton({Key? key, @required this.width}) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(8)),
      child: CircularProgressIndicator(
        color: secondaryColor,
      ),
    );
  }
}
