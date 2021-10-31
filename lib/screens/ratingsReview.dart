import 'package:flutter/material.dart';
import 'package:jag_cab/screens/ratings_success.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';

class RatingsReview extends StatefulWidget {
  RatingsReview({Key? key}) : super(key: key);

  @override
  _RatingsReviewState createState() => _RatingsReviewState();
}

class _RatingsReviewState extends State<RatingsReview> {
  final TextEditingController expController = TextEditingController();

  final TextEditingController serController = TextEditingController();

  final TextEditingController sugController = TextEditingController();

  bool good = false;

  bool vgood = false;

  bool exc = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;
    var h = SizeConfig.screenHeight / 812;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(gradient: buttonGradient),
          child: Column(
            children: [
              AppBarText(
                txt: RatingNReview,
                icon: 'assets/icons/rating_icon.svg',
                actionIcon: null,
                isBackButton: true,
              ),
              Expanded(
                child: Container(
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.only(left: b * 30, right: b * 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sh(30),
                        Row(children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                good = true;
                                vgood = false;
                                exc = false;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 10, horizontal: b * 10),
                              decoration: BoxDecoration(
                                color: good ? primaryColor : Colors.white,
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Good",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: b * 12,
                                  letterSpacing: 0.45,
                                  color: good ? secondaryColor : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          sb(15),
                          InkWell(
                            onTap: () {
                              setState(() {
                                good = false;
                                vgood = true;
                                exc = false;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 10, horizontal: b * 10),
                              decoration: BoxDecoration(
                                color: vgood ? primaryColor : Colors.white,
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Very Good",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: b * 12,
                                  letterSpacing: 0.45,
                                  color: vgood ? secondaryColor : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          sb(15),
                          InkWell(
                            onTap: () {
                              setState(() {
                                good = false;
                                vgood = false;
                                exc = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 10, horizontal: b * 10),
                              decoration: BoxDecoration(
                                color: exc ? primaryColor : Colors.white,
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Excellent",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: b * 12,
                                  letterSpacing: 0.45,
                                  color: exc ? secondaryColor : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        sh(49),
                        AppTextField(
                          label: "Tell us about your booking experience?",
                          controller: expController,
                          suffix: null,
                          isVisibilty: null,
                          size: b * 12,
                          maxLines: 3,
                          minLines: 3,
                          vertPad: h * 13,
                          hint: "Write your review here",
                        ),
                        sh(30),
                        AppTextField(
                          label: "Did the services meet your expectation?",
                          controller: serController,
                          suffix: null,
                          isVisibilty: null,
                          size: b * 12,
                          maxLines: 3,
                          minLines: 3,
                          vertPad: h * 13,
                          hint: "Write your review here",
                        ),
                        sh(30),
                        AppTextField(
                          label:
                              "Please share with us any suggestions that you may have to improve our products and services further.",
                          controller: sugController,
                          suffix: null,
                          isVisibilty: null,
                          size: b * 12,
                          maxLines: 6,
                          minLines: 6,
                          vertPad: h * 13,
                          hint: "Write your review here",
                        ),
                        sh(35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppButton(
                              onPressed: () {
                                FocusScope.of(context).unfocus();

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RatingSuccessScreen(),
                                  ),
                                );
                              },
                              label: "SUBMIT",
                              width: b * 111,
                            ),
                          ],
                        ),
                      ],
                    ),
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
