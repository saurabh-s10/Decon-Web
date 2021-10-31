import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jag_cab/screens/track_car.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';

class SelectCityScreen extends StatefulWidget {
  const SelectCityScreen({Key? key}) : super(key: key);

  @override
  _SelectCityScreenState createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  List<String> cityItems = ['City 1', 'City 2', 'City 3'];
  String selectedCity = ChooseYourCity;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              AppBarText(
                txt: ChooseYourCity,
                icon: 'assets/icons/choose_city.svg',
                isBackButton: false,
                actionIcon: null,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 50),
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
                      sh(50),
                      Image.asset(
                        'assets/images/select_city_illus.png',
                        height: h * 200,
                      ),
                      sh(70),
                      Text(
                        WantToBookCabLabel,
                        style: TextStyle(
                          fontSize: b * 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.6,
                        ),
                      ),
                      sh(24),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(selectedCity),
                            DropdownButton(
                              icon: SvgPicture.asset(
                                  'assets/icons/drop_down_icon.svg'),
                              iconSize: 18,
                              items: cityItems.map((e) {
                                return DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                );
                              }).toList(),
                              onChanged: (val) {
                                selectedCity = val.toString();
                                setState(() {});
                              },
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      sh(52),
                      Center(
                        child: AppButton(
                          label: SubmitLabel,
                          width: b * 112,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => TrackCarScreen(),
                              ),
                            );
                          },
                        ),
                      )
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
