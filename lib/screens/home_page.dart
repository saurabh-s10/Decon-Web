import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jag_cab/screens/bookCar.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/vehicle_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                isBackButton: false,
                actionIcon: null,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: b * 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: b * 24, vertical: h * 12),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: TextStyle(
                                  fontSize: b * 12,
                                  letterSpacing: 0.6,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  hintText: "Search",
                                  isDense: true,
                                  hintStyle: TextStyle(
                                    fontSize: b * 12,
                                    letterSpacing: 0.6,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.search,
                              size: b * 20,
                              color: Color(0xff414144),
                            ),
                          ],
                        ),
                      ),
                    ),
                    sb(30),
                    SvgPicture.asset(
                      'assets/icons/choose_city.svg',
                      height: h * 25,
                    ),
                  ],
                ),
              ),
              sh(32),
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
                      sh(40),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: b * 31),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: h * 55,
                              width: b * 61,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                AllLabel,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: b * 12,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: h * 55,
                              width: b * 69,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/choose_your_car.svg',
                                    color: secondaryColor,
                                  ),
                                  sh(4),
                                  Text(
                                    HatchBackLabel,
                                    style: TextStyle(
                                      fontSize: b * 10,
                                      color: secondaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: h * 55,
                              width: b * 61,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/choose_your_car.svg',
                                      color: Colors.black,
                                    ),
                                    sh(4),
                                    Text(
                                      SedanLabel,
                                      style: TextStyle(
                                        fontSize: b * 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: h * 55,
                              width: b * 61,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/choose_your_car.svg',
                                    color: Colors.black,
                                  ),
                                  sh(4),
                                  Text(
                                    SaloonLabel,
                                    style: TextStyle(
                                      fontSize: b * 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h * 34, left: b * 32),
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: b * 12),
                        ),
                      ),
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
                              child: VehicleCard(),
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
}
