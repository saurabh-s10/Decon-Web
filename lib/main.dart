import 'package:dweb/about.dart';
import 'package:dweb/clientPages/clientDetail.dart';
import 'package:dweb/clientPages/clientList.dart';
import 'package:dweb/clientPages/fillDetails.dart';
import 'package:dweb/contactUs.dart';
import 'package:dweb/deviceSettings/deviceSettings.dart';
import 'package:dweb/device/devices.dart';
import 'package:dweb/home.dart';
import 'package:dweb/manager/fullManagerList.dart';
import 'package:dweb/people/people.dart';
import 'package:dweb/people/profilePage.dart';
import 'package:dweb/people2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:dweb/errorScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Decon Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: blc,
        accentColor: dc,
        visualDensity: VisualDensity.standard,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  final int index;
  HomePage({this.index});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _widgetOption = <Widget>[
    Home(),
    Devices(),
    People2(),
    DeviceSettings(),
    Container(),
    Container(),
    ClientList(),
    FullManagerList(),
    About(),
    ContactUs(),
  ];
  List<Widget> _widgetExtra = <Widget>[
    FillDetails(),
    ClientDetails(),
    ProfilePage(),
    Error(),
  ];

  int selected = 0;
  @override
  void initState() {
    if (widget.index == 0) {
      setState(() {
        selected = 6;
      });
      if (widget.index == 1) {
        setState(() {
          selected = 6;
        });
      }
      if (widget.index == 2) {
        setState(() {
          selected = 2;
        });
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: b * 265,
            color: dc,
            child: Column(
              children: [
                sh(45),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: b * 25),
                      height: h * 60,
                      width: b * 60,
                      decoration: BoxDecoration(
                        color: wc,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Name",
                          style: txtS(wc, 18, FontWeight.w700),
                        ),
                        Text(
                          "ritesh.shuklalmp2018@gmail.com",
                          style: txtS(wc, 14, FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                sh(60),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 0;
                    });
                  },
                  child: panel("Home", null, 0, true, 'images/Home.svg'),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  child: panel("Devices", Icons.memory, 1, false, ''),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                  child: panel("People", null, 2, true, 'images/3 User.svg'),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 3;
                    });
                  },
                  child: panel("Device Settings", Icons.settings, 3, false, ''),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 4;
                    });
                  },
                  child: panel("Statistics", Icons.settings, 4, false, ''),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 5;
                    });
                  },
                  child:
                      panel("Maintainence Report", Icons.build, 5, false, ''),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 6;
                    });
                  },
                  child: panel("Client List", Icons.view_list, 6, false, ''),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 7;
                    });
                  },
                  child: panel("Managers List", Icons.person, 7, false, ''),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 8;
                    });
                  },
                  child: panel("About Vysion", Icons.verified, 8, false, ''),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 9;
                    });
                  },
                  child:
                      panel("Contact Us", Icons.settings_phone, 9, false, ''),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 10;
                    });
                  },
                  child: panel("Log Out", Icons.logout, 10, false, ''),
                ),
                sh(50),
              ],
            ),
          ),
          widget.index == 0
              ? Expanded(
                  child: _widgetExtra[widget.index],
                )
              : Expanded(
                  child: _widgetOption[selected],
                ),
        ],
      ),
    );
  }

  Widget panel(String tit, ico, int index, bool svg, String svgLink) {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      padding: EdgeInsets.symmetric(vertical: h * 16),
      decoration: BoxDecoration(
        color: selected == index ? Color(0xff3e535e) : Colors.transparent,
        border: Border(
          left: BorderSide(
              color: selected == index ? blc : Colors.transparent,
              width: b * 6),
        ),
      ),
      child: Row(
        children: [
          sb(35),
          svg
              ? SvgPicture.asset(
                  svgLink,
                  allowDrawingOutsideViewBox: true,
                  width: b * 24,
                  height: h * 24,
                )
              : Icon(ico, color: wc, size: h * 24),
          sb(18),
          Text(
            tit,
            style: txtS(wc, 16, FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
