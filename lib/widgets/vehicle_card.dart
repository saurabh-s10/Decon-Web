import 'package:flutter/material.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/widgets/vehicleDescription.dart';
import 'package:jag_cab/widgets/vehicle_tags.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    return Container(
      margin: EdgeInsets.only(right: b * 40, bottom: h * 28),
      padding: EdgeInsets.all(20),
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/car_placeholder.png',
                width: b * 88,
                height: h * 50,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Tata Motors Innova-Grey",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: b * 14,
                      ),
                    ),
                    sh(17),
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
              )
            ],
          ),
          sh(17),
          VehicleDescription(txt: "\u20b9 3000/day upto 300 Kms"),
          sh(10),
          VehicleDescription(txt: "\u20b9 8000/day unlimited Kms"),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: h * 6, horizontal: b * 6),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                size: b * 18,
                color: secondaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
