import 'package:cached_network_image/cached_network_image.dart';
import 'package:dweb/people/dialogBoxAddMembers.dart';
import 'package:flutter/material.dart';
import '../Utils/SizeConfig.dart';
import 'package:page_view_indicators/arrow_page_indicator.dart';

import '../Utils/constants.dart';

class People extends StatefulWidget {
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  ScrollController _scrollController = ScrollController();
  final _pageController = PageController();
  final TextEditingController name = TextEditingController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  controller: name,
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
              Spacer(),
              MaterialButton(
                color: blc,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(h * 6),
                ),
                onPressed: () {
                  dialogBoxAddMember(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: h * 11, horizontal: b * 60),
                  alignment: Alignment.center,
                  child: Text(
                    'Add',
                    style: txtS(wc, 18, FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        sh(30),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(b * 32, 0, b * 43, h * 0),
                padding: EdgeInsets.fromLTRB(b * 19, h * 19, b * 21, h * 63),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Manager",
                      style: txtS(dc, 20, FontWeight.w600),
                    ),
                    sh(20),
                    Row(
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
                          fit: BoxFit.cover,
                          imageBuilder: (context, imageProvider) => Container(
                            height: h * 120,
                            width: b * 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        sb(50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ritesh Shukla",
                              style: txtS(blc, 20, FontWeight.w600),
                            ),
                            sh(10),
                            Text(
                              "ritesh.shuklalmp2018@gmail.com",
                              style:
                                  txtS(Color(0xff727272), 16, FontWeight.w400),
                            ),
                            sh(10),
                            Text(
                              "6387246025",
                              style:
                                  txtS(Color(0xff727272), 16, FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(b * 43, 0, b * 32, h * 0),
                padding: EdgeInsets.fromLTRB(b * 19, h * 19, b * 21, h * 63),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Admin",
                      style: txtS(dc, 20, FontWeight.w600),
                    ),
                    sh(20),
                    Row(
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
                          fit: BoxFit.cover,
                          imageBuilder: (context, imageProvider) => Container(
                            height: h * 120,
                            width: b * 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        sb(50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ritesh Shukla",
                              style: txtS(blc, 20, FontWeight.w600),
                            ),
                            sh(10),
                            Text(
                              "ritesh.shuklalmp2018@gmail.com",
                              style:
                                  txtS(Color(0xff727272), 16, FontWeight.w400),
                            ),
                            sh(10),
                            Text(
                              "6387246025",
                              style:
                                  txtS(Color(0xff727272), 16, FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        sh(82),
        Padding(
          padding: EdgeInsets.only(left: b * 32),
          child: Text(
            "Team Members",
            style: txtS(dc, 20, FontWeight.w600),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: b * 32),
          child: Text(
            "Total: 20",
            style: txtS(Color(0xff858585), 14, FontWeight.w400),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: b * 10, left: b * 10, bottom: h * 80),
          child: ArrowPageIndicator(
            rightIcon: Container(
              height: h * 30,
              width: b * 30,
              decoration: BoxDecoration(
                color: blc,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
                size: h * 20,
              ),
            ),
            leftIcon: Container(
              height: h * 30,
              width: b * 30,
              decoration: BoxDecoration(
                color: blc,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.keyboard_backspace,
                color: Colors.white,
                size: h * 20,
              ),
            ),
            curve: Curves.easeInCubic,
            isJump: false,
            pageController: _pageController,
            currentPageNotifier: _currentPageNotifier,
            itemCount: 3,
            child: _buildPageView(_pageController, _currentPageNotifier),
          ),
        ),
      ]),
    );
  }

  _buildPageView(
      PageController pageController, ValueNotifier currentPageNotifier) {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      color: Colors.transparent,
      height: h * 200,
      width: b * 1440,
      child: PageView.builder(
          itemCount: 3,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return ListView.builder(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (BuildContext ctxt, int index) {
                  return InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: h * 8),
                      width: b * 211,
                      child: Column(children: [
                        Container(
                          alignment: Alignment.center,
                          height: h * 87,
                          width: h * 87,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: blc,
                          ),
                        ),
                        sh(25),
                        Container(
                          alignment: Alignment.center,
                          width: b * 190,
                          child: Text(
                            "Nishant Singh",
                            overflow: TextOverflow.ellipsis,
                            style: txtS(blc, 18, FontWeight.w600),
                          ),
                        ),
                        sh(9),
                        Container(
                          alignment: Alignment.center,
                          width: b * 190,
                          child: Text(
                            "ritesh.shuklalmp2018@gmail.com amittttttttt",
                            overflow: TextOverflow.ellipsis,
                            style: txtS(Color(0xff727272), 16, FontWeight.w400),
                          ),
                        ),
                      ]),
                    ),
                  );
                });
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }
}
