import 'package:dweb/clientPages/dialogBoxConfirmAdd.dart';
import 'package:dweb/dropDownSeries.dart';
import 'package:dweb/clientPages/managerList.dart';
import 'package:flutter/material.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class FillDetails extends StatefulWidget {
  @override
  _FillDetailsState createState() => _FillDetailsState();
}

class _FillDetailsState extends State<FillDetails> {
  final TextEditingController name = TextEditingController();
  final TextEditingController department = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController district = TextEditingController();
  final TextEditingController state = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                sh(130),
                Padding(
                  padding: EdgeInsets.only(right: b * 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        color: blc,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(h * 6),
                        ),
                        onPressed: () {
                          dialogBoxConfirmAdd(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: h * 11, horizontal: b * 60),
                          alignment: Alignment.center,
                          child: Text(
                            'Done',
                            style: txtS(wc, 18, FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                sh(30),
                Expanded(
                  child: Row(children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding:
                            EdgeInsets.fromLTRB(b * 40, h * 40, b * 40, h * 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(h * 10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.10),
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(
                            left: b * 32, right: b * 17, bottom: h * 55),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fill Details",
                              style:
                                  txtS(Color(0xff858585), 16, FontWeight.w500),
                            ),
                            sh(11),
                            textField("Enter Name", name),
                            textField("Enter Department Name", department),
                            textField("City", city),
                            textField("District", district),
                            textField("State", state),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: b * 18, vertical: b * 8),
                              decoration: BoxDecoration(
                                color: Color(0xfff6f6f6),
                                borderRadius: BorderRadius.circular(h * 5),
                              ),
                              child: DropDownSeries(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ManagerList(),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textField(String title, controller) {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: b * 18, vertical: b * 17),
      margin: EdgeInsets.only(bottom: h * 16),
      decoration: BoxDecoration(
        color: Color(0xfff6f6f6),
        borderRadius: BorderRadius.circular(h * 5),
      ),
      child: TextField(
        controller: controller,
        style: txtS(dc, 16, FontWeight.w500),
        decoration: InputDecoration(
          isDense: true,
          contentPadding:
              EdgeInsets.symmetric(vertical: h * 0, horizontal: b * 0),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: title,
          hintStyle: txtS(Color(0xff858585), 16, FontWeight.w400),
          enabledBorder: InputBorder.none,
        ),
        maxLines: 1,
      ),
    );
  }
}
