import 'package:flutter/material.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';
import 'package:jag_cab/widgets/vehicleDescription.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final TextEditingController promoController = TextEditingController();
  bool cash = true;
  bool online = false;

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
                txt: CheckoutLabel,
                icon: 'assets/icons/checkout_icon.svg',
                actionIcon: null,
                isBackButton: true,
              ),
              Expanded(
                child: Container(
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(left: b * 30, right: b * 30),
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sh(40),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/car_placeholder.png',
                              width: b * 88,
                              height: h * 50,
                            ),
                            sb(24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tata Motors Innova-Grey",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: b * 12,
                                  ),
                                ),
                                sh(6),
                                Text(
                                  "Limited \u20b9 3000/day upto 300 Kms",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: b * 10,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                sh(6),
                                Text(
                                  "Self Drive",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: b * 10,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        sh(26),
                        AppTextField(
                          label: "Promo Code",
                          controller: promoController,
                          suffix: null,
                          isVisibilty: null,
                          size: b * 13,
                          vertPad: h * 13,
                          hint: "Enter promocode here",
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Apply Now",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: b * 14,
                                color: primaryColor,
                                letterSpacing: 0.6,
                              ),
                            ),
                          ),
                        ),
                        sh(15),
                        Text(
                          "Discount",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: b * 12,
                          ),
                        ),
                        sh(11),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              b * 20, h * 12, b * 15, h * 12),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Flat 10% off",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: b * 12,
                                      letterSpacing: 0.6,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "T&C Applied",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: b * 8,
                                      letterSpacing: 0.6,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              sh(10),
                              Text(
                                "Flipcart Sale offer.  sit amet, consectetur adipiscing elit ipsum dolor amet, consectetur adipiscing elit. ",
                                style: TextStyle(
                                  fontSize: b * 8,
                                  letterSpacing: 0.6,
                                  color: secondaryColor,
                                ),
                              ),
                              sh(11),
                              Text(
                                "Expires: 27 Jan 2021",
                                style: TextStyle(
                                  fontSize: b * 10,
                                  letterSpacing: 0.6,
                                  color: secondaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sh(31),
                        Row(children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                cash = true;
                                online = false;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 12, horizontal: b * 12),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                                color: cash ? primaryColor : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Cash",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: b * 12,
                                  letterSpacing: 0.45,
                                  color: cash ? secondaryColor : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          sb(30),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cash = false;
                                online = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 12, horizontal: b * 12),
                              decoration: BoxDecoration(
                                color: online ? primaryColor : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Text(
                                "Online",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: b * 12,
                                  letterSpacing: 0.45,
                                  color: online ? secondaryColor : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        sh(29),
                        Container(
                          margin: EdgeInsets.only(right: b * 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(b * 4),
                            border: Border.all(color: primaryColor),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sh(11),
                              textRow(b, "Booking ID", "B3DFGT46", h),
                              textRow(b, "Payment Method", "VISA *****3431", h),
                              textRow(
                                  b, "\u20b9 200 * 2 days", "\u20b9 400", h),
                              textRow(b, "Security Fee", "\u20b9 50", h),
                              textRow(b, "Discount", "Flipkart Sale Offer", h),
                              textRow(b, "Promocode", "5 % OFF", h),
                              Padding(
                                padding: EdgeInsets.only(left: b * 14),
                                child: Text(
                                  "** All prices are inclusive of GST",
                                  style: TextStyle(
                                    fontSize: b * 10,
                                    color: Colors.black.withOpacity(0.7),
                                    letterSpacing: 0.6,
                                  ),
                                ),
                              ),
                              sh(10),
                            ],
                          ),
                        ),
                        sh(20),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: b * 12, vertical: h * 9.5),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(b * 8),
                          ),
                          child: Text(
                            "TOTAL AMOUNT  Rs 450",
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: b * 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        sh(22),
                        Center(
                          child: AppButton(
                            label: "PROCEED TO PAY INR 450",
                            width: b * 230,
                          ),
                        ),
                        sh(100),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textRow(double b, String? title, String? content, double h) {
    return Padding(
      padding: EdgeInsets.only(left: b * 14, right: b * 14, bottom: h * 14),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: b * 10,
                letterSpacing: 0.6,
              ),
            ),
          ),
          Expanded(
            child: Text(
              content!,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: b * 10,
                color: primaryColor,
                letterSpacing: 0.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
