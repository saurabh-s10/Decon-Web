import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jag_cab/utils/app_texts.dart';
import 'package:jag_cab/utils/colors.dart';
import 'package:jag_cab/utils/sizeConfig.dart';
import 'package:jag_cab/utils/strings.dart';
import 'package:jag_cab/widgets/app_button.dart';
import 'package:jag_cab/widgets/app_text_field.dart';
import 'package:dropdown_below/dropdown_below.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String nationality = '';
  List<String?> nationalityList = ['Indian', "American"];

  String selectedDoc = 'dom';
  onChangeDropdownTests(selectedTest) {
    setState(() {
      nationality = selectedTest;
    });
  }

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
                txt: ProfileLabel,
                icon: 'assets/icons/profile_icon.svg',
                isBackButton: true,
                actionIcon: 'assets/icons/edit_icon.svg',
              ),
              Expanded(
                child: SingleChildScrollView(
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
                        sh(41),
                        Padding(
                          padding: EdgeInsets.only(right: b * 80),
                          child: AppTextField(
                            label: FullName,
                            controller: nameController,
                            suffix: null,
                            size: b * 12,
                            spacing: 0.6,
                            isVisibilty: null,
                          ),
                        ),
                        sh(20),
                        Padding(
                          padding: EdgeInsets.only(right: b * 80),
                          child: AppTextField(
                            label: AddresseLabel,
                            controller: addController,
                            suffix: null,
                            maxLines: 3,
                            size: b * 12,
                            spacing: 0.6,
                            isVisibilty: null,
                          ),
                        ),
                        sh(20),
                        Text(
                          MobileNumberLabel,
                          style: TextStyle(
                            fontSize: b * 12,
                          ),
                        ),
                        sh(15),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: b * 12, vertical: h * 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          width: b * 150,
                          child: Row(
                            children: [
                              CountryCodePicker(
                                initialSelection: 'IN',
                                padding: EdgeInsets.zero,
                                showFlagMain: true,
                                builder: (countryCode) {
                                  return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: b * 14,
                                        height: h * 14,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              countryCode!.flagUri!,
                                              package: 'country_code_picker',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      sb(3),
                                      SvgPicture.asset(
                                        'assets/icons/drop_down_icon.svg',
                                        height: h * 4,
                                      ),
                                    ],
                                  );
                                },
                              ),
                              sb(5),
                              Expanded(
                                child: TextFormField(
                                  controller: phoneController,
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: b * 12,
                                  ),
                                  decoration: InputDecoration(
                                    counterText: '',
                                    contentPadding: EdgeInsets.zero,
                                    isDense: true,
                                    focusedBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    focusColor: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        sh(20),
                        Text(
                          Nationality,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: b * 12,
                          ),
                        ),
                        sh(16),
                        Container(
                          width: b * 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownBelow(
                            boxHeight: h * 30,
                            itemWidth: b * 100,
                            itemTextstyle: TextStyle(
                              fontSize: b * 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            boxPadding: EdgeInsets.fromLTRB(
                              b * 14,
                              h * 0,
                              b * 10,
                              h * 0,
                            ),
                            boxTextstyle: TextStyle(
                              fontSize: b * 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            boxWidth: b * 100,
                            icon: SvgPicture.asset(
                              'assets/icons/drop_down_icon.svg',
                              height: h * 6,
                            ),
                            hint: Text(
                              nationality == '' ? 'Nationality' : nationality,
                              style: TextStyle(
                                fontSize: b * 12,
                                letterSpacing: 0.6,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: null,
                            items: nationalityList.map((e) {
                              return DropdownMenuItem<String?>(
                                child: Text(e!),
                                value: e,
                              );
                            }).toList(),
                            onChanged: onChangeDropdownTests,
                          ),
                        ),
                        sh(20),
                        Text(
                          DocumentsLabel,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: b * 12,
                          ),
                        ),
                        sh(16),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                selectedDoc = 'dom';
                                setState(() {});
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: h * 12, horizontal: b * 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                  color: selectedDoc == 'dom'
                                      ? primaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  DomesticLabel,
                                  style: TextStyle(
                                    color: selectedDoc == 'dom'
                                        ? secondaryColor
                                        : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.45,
                                    fontSize: b * 12,
                                  ),
                                ),
                              ),
                            ),
                            sb(20),
                            InkWell(
                              onTap: () {
                                selectedDoc = 'intl';
                                setState(() {});
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: h * 12, horizontal: b * 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                  color: selectedDoc != 'dom'
                                      ? primaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  InternationalLabel,
                                  style: TextStyle(
                                    color: selectedDoc != 'dom'
                                        ? secondaryColor
                                        : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.45,
                                    fontSize: b * 12,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        sh(20),
                        selectedDoc != 'intl'
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AadhaarCardLabel,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: b * 12,
                                      letterSpacing: 0.6,
                                    ),
                                  ),
                                  sh(16),
                                  Container(
                                    height: h * 72,
                                    width: b * 219,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: primaryColor),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  sh(20),
                                  Text(
                                    DrivingLicenseLabel,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: b * 12,
                                      letterSpacing: 0.6,
                                    ),
                                  ),
                                  sh(16),
                                  Container(
                                    height: h * 72,
                                    width: b * 219,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: primaryColor),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Overseas Driving License",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: b * 12,
                                      letterSpacing: 0.6,
                                    ),
                                  ),
                                  sh(16),
                                  Container(
                                    height: h * 72,
                                    width: b * 219,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: primaryColor),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  sh(20),
                                  Text(
                                    "International License",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: b * 12,
                                      letterSpacing: 0.6,
                                    ),
                                  ),
                                  sh(16),
                                  Container(
                                    height: h * 72,
                                    width: b * 219,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: primaryColor),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  sh(20),
                                  Text(
                                    "Passport",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: b * 12,
                                      letterSpacing: 0.6,
                                    ),
                                  ),
                                  sh(16),
                                  Container(
                                    height: h * 72,
                                    width: b * 219,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: primaryColor),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ],
                              ),
                        sh(40),
                        Center(
                          child: AppButton(
                            label: "CONTINUE",
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfileScreen(),
                                ),
                              );
                            },
                            width: b * 140,
                          ),
                        ),
                        sh(40),
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
}
