import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jag_cab/screens/bookCar.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/widgets/vehicleCardHistory.dart';

class BookingHistory extends StatefulWidget {
  const BookingHistory({Key? key}) : super(key: key);

  @override
  _BookingHistoryState createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  List types = [
    'All Bookings',
    'Pending',
    'Confirmed',
    'Completed',
    'Cancelled'
  ];
  String historyType = '';
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
              Padding(
                padding: EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/history.svg",
                      color: secondaryColor,
                    ),
                    sb(13),
                    Text(
                      "Booking History",
                      style: TextStyle(
                        fontSize: b * 16,
                        fontWeight: FontWeight.w700,
                        color: secondaryColor,
                        letterSpacing: 0.6,
                      ),
                    ),
                    Spacer(),
                    PopupMenuButton<String>(
                      padding: EdgeInsets.only(left: b * 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(b * 8),
                      ),
                      onSelected: (value) {
                        setState(() {
                          historyType = value;
                        });
                      },
                      itemBuilder: (BuildContext context) {
                        return {
                          'All Bookings',
                          'Pending',
                          'Confirmed',
                          'Completed',
                          'Cancelled'
                        }.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/${choice.toLowerCase()}.svg",
                                  width: b * 16,
                                ),
                                sb(26),
                                Text(
                                  choice,
                                  style: TextStyle(
                                    fontSize: b * 14,
                                    color: Colors.black.withOpacity(0.75),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/filter.svg",
                        color: secondaryColor,
                        width: b * 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
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
                      sh(20),
                      historyType == "All Bookings" || historyType == ''
                          ? sh(0)
                          : tagType(b, h, historyType),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: h * 16),
                          shrinkWrap: true,
                          itemCount: 3,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                FocusScope.of(context).unfocus();

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => BookCar(),
                                  ),
                                );
                              },
                              child: VehicleCardHistory(),
                            );
                          },
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

  Container tagType(double b, double h, String type) {
    return Container(
      margin: EdgeInsets.only(left: b * 25),
      padding: EdgeInsets.symmetric(horizontal: b * 10, vertical: h * 10),
      decoration: BoxDecoration(
        color: tagColor(type),
        borderRadius: BorderRadius.circular(b * 8),
      ),
      child: Text(
        type.toUpperCase(),
        style: TextStyle(
          fontSize: b * 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

Color tagColor(String type) {
  if (type == "Cancelled")
    return secondaryColor;
  else if (type == 'Completed')
    return Color(0xff14964F);
  else if (type == "Confirmed")
    return Color(0xff0075FF);
  else if (type == "Pending") return Color(0xffFF6B00);
  return Colors.black;
}
