import 'package:dweb/main.dart';
import 'package:flutter/material.dart';
import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';

class ClientList extends StatefulWidget {
  @override
  _ClientListState createState() => _ClientListState();
}

class _ClientListState extends State<ClientList> {
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      child: Column(
        children: [
          sh(130),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: b * 32),
            child: Row(
              children: [
                Container(
                  width: b * 325,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: dc, width: 0.5),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(b * 60),
                  ),
                  child: TextField(
                    controller: search,
                    style: TextStyle(fontSize: b * 12, color: dc),
                    decoration: InputDecoration(
                      prefixIcon: InkWell(
                        child: Icon(Icons.search, color: blc),
                        onTap: null,
                      ),
                      isDense: true,
                      isCollapsed: true,
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 35, maxHeight: 30),
                      hintText: 'Search by Name',
                      hintStyle: TextStyle(
                        fontSize: b * 12,
                        color: Color(0xff858585),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: h * 17, horizontal: b * 10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                sb(27),
                Container(
                  width: b * 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: dc, width: 0.5),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(b * 60),
                  ),
                  padding: EdgeInsets.symmetric(vertical: h * 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Select Filter',
                        style: txtS(dc, 16, FontWeight.w400),
                      ),
                      sb(10),
                      Icon(Icons.filter_list, color: blc, size: h * 20),
                    ],
                  ),
                ),
                Spacer(),
                MaterialButton(
                  color: blc,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(h * 6),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(index: 0),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: h * 11, horizontal: b * 30),
                    alignment: Alignment.center,
                    child: Text(
                      'Add Client',
                      style: txtS(wc, 18, FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          sh(27),
          Expanded(
            child: Container(
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
              margin: EdgeInsets.only(left: b * 32, right: b * 32),
              child: ListView.builder(
                padding: EdgeInsets.fromLTRB(b * 24, h * 28, b * 24, h * 28),
                itemCount: 10,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding:
                        EdgeInsets.fromLTRB(b * 33, h * 10, b * 33, h * 10),
                    margin: EdgeInsets.only(bottom: h * 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(h * 10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Container(
                                height: h * 45,
                                width: b * 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              sb(18),
                              Text(
                                "Name",
                                style: txtS(blc, 18, FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Address Address Address Address Address Address Address Address Address Address",
                            style: txtS(dc, 16, FontWeight.w400),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "S0",
                            textAlign: TextAlign.right,
                            style: txtS(blc, 22, FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
