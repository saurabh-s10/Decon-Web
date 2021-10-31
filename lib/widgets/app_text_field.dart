import 'package:flutter/material.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';

class AppTextField extends StatelessWidget {
  AppTextField(
      {@required this.label,
      @required this.controller,
      @required this.suffix,
      @required this.isVisibilty,
      this.inputType,
      this.maxLines,
      this.size,
      this.spacing,
      this.minLines,
      this.vertPad,
      this.hint});

  final String? label;
  final TextEditingController? controller;
  final Widget? suffix;
  final bool? isVisibilty;
  final TextInputType? inputType;
  final int? maxLines;
  final double? size;
  final double? spacing;
  final double? vertPad;
  final int? minLines;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: TextStyle(
            fontSize: b * 12,
          ),
        ),
        sh(15),
        TextFormField(
          style: TextStyle(
            fontSize: size ?? b * 14,
            fontWeight: FontWeight.w500,
            letterSpacing: spacing ?? 0,
          ),
          controller: controller,
          obscureText: isVisibilty ?? false,
          obscuringCharacter: "*",
          keyboardType: inputType ?? TextInputType.text,
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          decoration: InputDecoration(
            suffix: suffix,
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: size ?? b * 14,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.8),
              letterSpacing: spacing ?? 0,
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: b * 12, vertical: vertPad ?? 0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
            ),
            focusColor: primaryColor,
          ),
        )
      ],
    );
  }
}
