import 'package:flutter/material.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/vehicleDescription.dart';
import 'package:jag_cab/widgets/vehicle_tags.dart';

class BookCar extends StatefulWidget {
  const BookCar({Key? key}) : super(key: key);

  @override
  _BookCarState createState() => _BookCarState();
}

class _BookCarState extends State<BookCar> {
  bool limited = false;
  String startDate = DateTime.now().toString().substring(0, 10);
  String endDate = DateTime.now().toString().substring(0, 10);

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
                txt: ChooseYourCar,
                icon: 'assets/icons/choose_your_car.svg',
                isBackButton: true,
                actionIcon: null,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 29),
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
                      sh(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                limited = true;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 16, horizontal: b * 12),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                                color: limited ? primaryColor : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Limited",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.45,
                                  color:
                                      limited ? secondaryColor : Colors.black,
                                  fontSize: b * 12,
                                ),
                              ),
                            ),
                          ),
                          sb(28),
                          InkWell(
                            onTap: () {
                              setState(() {
                                limited = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 16, horizontal: b * 12),
                              decoration: BoxDecoration(
                                color: !limited ? primaryColor : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Unlimited",
                                    style: TextStyle(
                                      fontSize: b * 12,
                                      letterSpacing: 0.45,
                                      color: !limited
                                          ? secondaryColor
                                          : Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      sh(34),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tata Motors Innova-Grey",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: b * 14,
                                ),
                              ),
                              sh(21),
                              Image.asset(
                                'assets/images/car_placeholder.png',
                                width: b * 157,
                                height: h * 90,
                              ),
                              sh(12),
                              VehicleDescription(
                                  txt: "\u20b9 3000/day upto 300 Kms"),
                              sh(10),
                              VehicleDescription(txt: "Self Drive Car"),
                            ],
                          ),
                          Spacer(),
                          Expanded(
                            child: Column(
                              children: [
                                sh(17),
                                Column(
                                  children: [
                                    VehicleTags(txt: "6 Seater", size: b * 12),
                                    sh(12),
                                    VehicleTags(txt: "Petrol", size: b * 12),
                                    sh(12),
                                    VehicleTags(txt: "Automatic", size: b * 12),
                                    sh(12),
                                    VehicleTags(txt: "Air Bags", size: b * 12),
                                    sh(12),
                                    VehicleTags(txt: "Taxi", size: b * 12),
                                    sh(12),
                                    VehicleTags(
                                        txt: "Self Drive", size: b * 12),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Date",
                        style: TextStyle(
                          fontSize: b * 12,
                          letterSpacing: 0.6,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sh(16),
                      Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              final picked = await showDateRangePicker(
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      primaryColor: secondaryColor,
                                      accentColor: Colors.white,
                                      colorScheme: ColorScheme.light(
                                        primary: primaryColor,
                                        surface: secondaryColor,
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2022),
                              );
                              if (picked != null) {
                                setState(() {
                                  startDate =
                                      picked.start.toString().substring(0, 10);
                                  endDate =
                                      picked.end.toString().substring(0, 10);
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 12, horizontal: b * 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(b * 4),
                                border: Border.all(color: primaryColor),
                              ),
                              child: Text(
                                startDate,
                                style: TextStyle(
                                  fontSize: b * 10,
                                  letterSpacing: 0.6,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                            ),
                          ),
                          sb(23),
                          Icon(Icons.arrow_forward, size: b * 16),
                          sb(23),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: h * 12, horizontal: b * 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(b * 4),
                                border: Border.all(color: primaryColor),
                              ),
                              child: Text(
                                endDate,
                                style: TextStyle(
                                  fontSize: b * 10,
                                  letterSpacing: 0.6,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      sh(29),
                      Text(
                        "Time(IST)",
                        style: TextStyle(
                          fontSize: b * 12,
                          letterSpacing: 0.6,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sh(16),
                      sh(40),
                      Center(
                        child: AppButton(
                          label: ContinueLabel,
                          width: b * 140,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
