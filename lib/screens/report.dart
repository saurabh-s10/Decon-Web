import 'package:flutter/material.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController desController = TextEditingController();

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
                txt: ReportLabel,
                icon: 'assets/icons/report_icon.svg',
                actionIcon: null,
                isBackButton: true,
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
                      sh(60),
                      Padding(
                        padding: EdgeInsets.only(right: b * 70),
                        child: AppTextField(
                          label: TitleLabel,
                          controller: titleController,
                          suffix: null,
                          isVisibilty: null,
                        ),
                      ),
                      sh(20),
                      Padding(
                        padding: EdgeInsets.only(right: b * 70),
                        child: AppTextField(
                          label: DescriptionLabel,
                          controller: desController,
                          suffix: null,
                          isVisibilty: null,
                          maxLines: 5,
                          minLines: 5,
                        ),
                      ),
                      sh(20),
                      Text(
                        UploadImageLabel,
                        style: TextStyle(
                          fontSize: b * 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      sh(12),
                      Container(
                        width: b * 90,
                        height: h * 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          Icons.upload_sharp,
                          color: primaryColor,
                        ),
                      ),
                      sh(40),
                      Center(
                        child: AppButton(
                          label: SubmitLabel,
                          width: b * 115,
                          onPressed: () {},
                        ),
                      ),
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
