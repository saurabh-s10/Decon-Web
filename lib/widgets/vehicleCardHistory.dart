import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jag_cab/screens/bookCar.dart';
import 'package:jag_cab/screens/dialogBoxCancel.dart';
import 'package:jag_cab/screens/ratingsReview.dart';
import 'package:jag_cab/screens/report.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/widgets/vehicleDescription.dart';
import 'package:jag_cab/widgets/vehicle_tags.dart';

class VehicleCardHistory extends StatelessWidget {
  const VehicleCardHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      margin: EdgeInsets.only(right: b * 32, bottom: h * 28),
      padding: EdgeInsets.fromLTRB(b * 8, h * 10, b * 15, h * 17),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: h * 10),
                child: Image.asset(
                  'assets/images/car_placeholder.png',
                  width: b * 120,
                  height: h * 70,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tata Motors Innova-Grey",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: b * 14,
                      ),
                    ),
                    sh(5),
                    Text(
                      "Booking Id: 12345678",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: b * 10,
                      ),
                    ),
                    sh(10),
                    Wrap(
                      spacing: b * 10,
                      runSpacing: h * 8,
                      children: [
                        VehicleTags(txt: "6 Seater"),
                        VehicleTags(txt: "Petrol"),
                        VehicleTags(txt: "Automatic"),
                        VehicleTags(txt: "Air Bags"),
                        VehicleTags(txt: "Taxi"),
                        VehicleTags(txt: "Self Drive"),
                      ],
                    )
                  ],
                ),
              ),
              PopupMenuButton<String>(
                padding: EdgeInsets.only(left: b * 14, right: b * 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(b * 8),
                ),
                onSelected: (value) {
                  if (value == 'Rating') {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RatingsReview(),
                      ),
                    );
                  } else if (value == 'Report') {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ReportScreen(),
                      ),
                    );
                  } else if (value == 'Update') {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BookCar(),
                      ),
                    );
                  } else if (value == 'Cancel') {
                    dialogBoxCancel(context);
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {'Cancel', 'Update', 'Rating', 'Report'}
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      height: h * 30,
                      value: choice,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/${choice.toLowerCase()}" +
                                ((choice == 'Rating' || choice == 'Report')
                                    ? "_icon"
                                    : '') +
                                ".svg",
                            width: b * 12,
                            color: Colors.black,
                          ),
                          sb(8),
                          Text(
                            choice,
                            style: TextStyle(
                              fontSize: b * 12,
                              color: Colors.black.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList();
                },
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
          sh(19),
          Container(
            margin: EdgeInsets.only(left: b * 21, right: b * 8),
            padding: EdgeInsets.symmetric(horizontal: b * 22, vertical: h * 10),
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(b * 4),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Tuesday, 16 July",
                      style: TextStyle(fontSize: b * 10, letterSpacing: 0.6),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      size: b * 16,
                    ),
                    Spacer(),
                    Text(
                      "Friday, 19 July",
                      style: TextStyle(fontSize: b * 10, letterSpacing: 0.6),
                    ),
                  ],
                ),
                sh(10),
                Row(
                  children: [
                    Text(
                      "11:00 AM",
                      style: TextStyle(fontSize: b * 10, letterSpacing: 0.6),
                    ),
                    Spacer(),
                    Text(
                      "11:00 PM",
                      style: TextStyle(fontSize: b * 10, letterSpacing: 0.6),
                    ),
                  ],
                ),
              ],
            ),
          ),
          sh(21),
          Padding(
            padding: EdgeInsets.only(left: b * 21),
            child: Row(
              children: [
                VehicleDescription(txt: "\u20b9 3000/day upto 300 Kms"),
                sb(30),
                VehicleDescription(txt: "COMPLETED"),
              ],
            ),
          ),
          sh(10),
          Padding(
            padding: EdgeInsets.only(left: b * 21),
            child: Row(
              children: [
                VehicleDescription(txt: "Total Amount   \u20b9 450"),
                sb(30),
                VehicleDescription(txt: "Self Drive Car"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
