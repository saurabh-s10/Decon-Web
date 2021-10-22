import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class DialogBoxAddMember extends StatefulWidget {
  @override
  _DialogBoxAddMemberState createState() => _DialogBoxAddMemberState();
}

class _DialogBoxAddMemberState extends State<DialogBoxAddMember> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController post = TextEditingController();
  bool admin = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 1440;
    var h = SizeConfig.screenHeight / 900;
    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: b * 476.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.fromLTRB(b * 13, h * 15, b * 13, h * 21),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close, color: blc, size: h * 24),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 23),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                admin = !admin;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: h * 9),
                              decoration: BoxDecoration(
                                color: !admin ? blc : Colors.white,
                                border: Border.all(
                                  color: admin ? blc : Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(h * 20),
                              ),
                              child: Text(
                                'Add team member',
                                style: txtS(!admin ? Colors.white : blc, 14,
                                    FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        sb(16),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                admin = !admin;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: h * 9),
                              decoration: BoxDecoration(
                                color: admin ? blc : Colors.white,
                                border: Border.all(
                                    color: !admin ? blc : Colors.transparent,
                                    width: b * 1),
                                borderRadius: BorderRadius.circular(h * 20),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Add Admin',
                                style: txtS(admin ? Colors.white : blc, 14,
                                    FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    sh(15),
                    Text(
                      "Name",
                      style: txtS(dc, 16, FontWeight.w500),
                    ),
                    sh(6),
                    Container(
                      padding: EdgeInsets.fromLTRB(b * 11, h * 15, 0, h * 15),
                      width: b * 800,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(color: blc, width: 0.7),
                        borderRadius: BorderRadius.circular(h * 5),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: name,
                        style: txtS(dc, 18, FontWeight.w500),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          hintText: 'Enter Name',
                          hintStyle:
                              txtS(blc.withOpacity(0.25), 14, FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    sh(15),
                    Text(
                      "E-Mail",
                      style: txtS(dc, 16, FontWeight.w500),
                    ),
                    sh(6),
                    Container(
                      padding: EdgeInsets.fromLTRB(b * 11, h * 15, 0, h * 15),
                      width: b * 800,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(color: blc, width: 0.7),
                        borderRadius: BorderRadius.circular(h * 5),
                      ),
                      child: TextField(
                        controller: email,
                        style: txtS(dc, 18, FontWeight.w500),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          hintText: 'Enter Email',
                          hintStyle:
                              txtS(blc.withOpacity(0.25), 14, FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    sh(15),
                    Text(
                      "Phone Number",
                      style: txtS(dc, 16, FontWeight.w500),
                    ),
                    sh(6),
                    Container(
                      padding: EdgeInsets.fromLTRB(b * 11, h * 15, 0, h * 15),
                      width: b * 800,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(color: blc, width: 0.7),
                        borderRadius: BorderRadius.circular(b * 5),
                      ),
                      child: TextField(
                        controller: phone,
                        keyboardType: TextInputType.number,
                        style: txtS(dc, 18, FontWeight.w500),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          hintText: 'Enter Phone Number',
                          hintStyle:
                              txtS(blc.withOpacity(0.25), 14, FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    sh(15),
                    Text(
                      "Post",
                      style: txtS(dc, 16, FontWeight.w500),
                    ),
                    sh(6),
                    Container(
                      padding: EdgeInsets.fromLTRB(b * 11, h * 15, 0, h * 15),
                      width: b * 800,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(color: blc, width: 0.7),
                        borderRadius: BorderRadius.circular(b * 5),
                      ),
                      child: TextField(
                        controller: post,
                        keyboardType: TextInputType.name,
                        style: txtS(dc, 18, FontWeight.w500),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          hintText: 'Enter the Post',
                          hintStyle:
                              txtS(blc.withOpacity(0.25), 14, FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    sh(26),
                    MaterialButton(
                      color: blc,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(h * 6),
                      ),
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Add',
                          style: txtS(wc, 18, FontWeight.w500),
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ]),
    );
  }
}

void dialogBoxAddMember(BuildContext context) {
  showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return DialogBoxAddMember();
    },
    animationType: DialogTransitionType.scaleRotate,
    curve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 400),
  );
}
