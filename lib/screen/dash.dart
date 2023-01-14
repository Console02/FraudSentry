import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/addaccount..dart';
import 'package:fraudsentry/screen/dashboard/addnewcard.dart';
import 'package:fraudsentry/screen/dashboard/home.dart';
// import 'package:fraudsentry/screen/dashboard/home.dart';
import 'package:fraudsentry/screen/dashboard/mycard.dart';
import 'package:fraudsentry/screen/dashboard/statics.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

int _selectedIndex = 0;
String itempage = "Dashboard";

class mainDashboard extends StatefulWidget {
  const mainDashboard({Key? key}) : super(key: key);

  @override
  State<mainDashboard> createState() => _mainDashboardState();
}

class _mainDashboardState extends State<mainDashboard> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (_selectedIndex == 0) {
      setState(() {
        itempage = "Home";
      });
    } else if (_selectedIndex == 1) {
      setState(() {
        itempage = "Statistics";
      });
    } else if (_selectedIndex == 2) {
      setState(() {
        itempage = "fbutton";
      });
    } else if (_selectedIndex == 3) {
      setState(() {
        itempage = "My card";
      });
    } else if (_selectedIndex == 4) {
      setState(() {
        itempage = "Profile";
      });
    }
  }

  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  Widget homenavigationWidget() {
    return homepage();
  }

  Widget statisticnavigationWidget() {
    return staticspage();
  }

  Widget mycardnavigationWidget() {
    return mycardinfo();
  }

  Widget addaccountnavigationWidget() {
    return addaccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: itempage == "Statistics"
          ? AppBar(
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.only(right: 5, top: 20, left: 20),
                child: Text(
                  "General Statistics",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
              leading: InkWell(
                onTap: () {
                  setState(() {
                    itempage = "Home";
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, top: 20, left: 20),
                  child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
                        size: 20,
                      )),
                ),
              ),
              elevation: 0,
            )
          : itempage == "My card"
              ? AppBar(
                  backgroundColor: Colors.white,
                  title: Padding(
                    padding: const EdgeInsets.only(right: 5, top: 20, left: 20),
                    child: Text(
                      "All Cards",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  leading: InkWell(
                    onTap: () {
                      setState(() {
                        itempage = "Home";
                      });
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 5, top: 20, left: 20),
                      child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.black,
                            size: 20,
                          )),
                    ),
                  ),
                  elevation: 0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                        top: 30,
                      ),
                      child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                            size: 20,
                          )),
                    )
                  ],
                )
              : itempage == "fbutton"
                  ? AppBar(
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding:
                            const EdgeInsets.only(right: 5, top: 20, left: 20),
                        child: Text(
                          "Add Account",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                      leading: InkWell(
                        onTap: () {
                          setState(() {
                            itempage = "Home";
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 5, top: 20, left: 20),
                          child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.black,
                                size: 20,
                              )),
                        ),
                      ),
                      elevation: 0,
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 25,
                            top: 30,
                          ),
                          child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                                size: 20,
                              )),
                        )
                      ],
                    )
                  : AppBar(
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Sophia Calzoni",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: Icon(
                                Icons.menu,
                                color: Color(0xFF00AFB9),
                                size: 20,
                              )),
                        ), //IconButton
                      ],
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Container(
                          width: 31.0,
                          height: 31.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Image.asset(
                            "assets/Ellipse.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      elevation: 0,
                    ),
      body: itempage == "Statistics"
          ? statisticnavigationWidget()
          : itempage == "fbutton"
              ? addaccountnavigationWidget()
              // addnewcardnavigationWidget()
              : itempage == "My card"
                  ? mycardnavigationWidget()
                  : itempage == "fbutton"
                      ? Text("My fbutton")
                      : itempage == "Profile"
                          ? Text("Profile")
                          : homenavigationWidget(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.signal_cellular_alt_rounded),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF00AFB9),
                    border: Border.all(color: Colors.grey.shade300)),
                child: Icon(
                  Icons.add_box,
                  color: Colors.white,
                  size: 20,
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'My card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        // selectedItemColor: const Color(0xff6200ee),
        // unselectedItemColor: const Color(0xff757575),
      ),
      // floatingActionButton: _buildFloatingActionButton(),
    );
  }
}

class Sales {
  final String? month;
  final int? day;

  Sales({
    this.month,
    this.day,
  });
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}