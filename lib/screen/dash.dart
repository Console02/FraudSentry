import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/home.dart';
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
  bool controler1 = true;
  bool controler2 = false;
  bool controler3 = false;
  bool controler4 = false;
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
          : AppBar(
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Sophia Calzoni",
                      style: TextStyle(color: Colors.black, fontSize: 13),
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
                          border: Border.all(color: Colors.grey.shade300)),
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
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Money Recieved ",
                            style: TextStyle(color: Colors.grey.shade300),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Outcome ",
                            style: TextStyle(color: Colors.grey.shade300),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Text("336,77K",
                              style: TextStyle(
                                  color: Color(0xFF00AFB9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ],
                      ),
                      // Column(children: [
                      //   //Initialize the chart widget
                      //   SfCartesianChart(
                      //       primaryXAxis: CategoryAxis(),
                      //       // Chart title
                      //       title:
                      //           ChartTitle(text: 'Half yearly sales analysis'),
                      //       // Enable legend
                      //       legend: Legend(isVisible: true),
                      //       // Enable tooltip
                      //       tooltipBehavior: TooltipBehavior(enable: true),
                      //       series: <ChartSeries<_SalesData, String>>[
                      //         LineSeries<_SalesData, String>(
                      //             dataSource: data,
                      //             xValueMapper: (_SalesData sales, _) =>
                      //                 sales.year,
                      //             yValueMapper: (_SalesData sales, _) =>
                      //                 sales.sales,
                      //             name: 'Sales',
                      //             // Enable data label
                      //             dataLabelSettings:
                      //                 DataLabelSettings(isVisible: true))
                      //       ]),
                      //   Expanded(
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       //Initialize the spark charts widget
                      //       child: SfSparkLineChart.custom(
                      //         //Enable the trackball
                      //         trackball: SparkChartTrackball(
                      //             activationMode: SparkChartActivationMode.tap),
                      //         //Enable marker
                      //         marker: SparkChartMarker(
                      //             displayMode: SparkChartMarkerDisplayMode.all),
                      //         //Enable data label
                      //         labelDisplayMode: SparkChartLabelDisplayMode.all,
                      //         xValueMapper: (int index) => data[index].year,
                      //         yValueMapper: (int index) => data[index].sales,
                      //         dataCount: 5,
                      //       ),
                      //     ),
                      //   )
                      // ]),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          controler1 == true
                              ? Container(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 3, bottom: 3),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF00AFB9),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: Text(
                                    "Oct to Dec",
                                    style: TextStyle(color: Colors.white),
                                  ))
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      controler1 = true;
                                      controler2 = false;
                                      controler3 = false;
                                      controler4 = false;
                                    });
                                  },
                                  child: Text("Oct to Dec")),
                          controler2 == true
                              ? Container(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 3, bottom: 3),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF00AFB9),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: Text(
                                    "1M",
                                    style: TextStyle(color: Colors.white),
                                  ))
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      controler1 = false;
                                      controler2 = true;
                                      controler3 = false;
                                      controler4 = false;
                                    });
                                  },
                                  child: Text("1m")),
                          controler3 == true
                              ? Container(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 3, bottom: 3),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF00AFB9),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: Text(
                                    "6M",
                                    style: TextStyle(color: Colors.white),
                                  ))
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      controler1 = false;
                                      controler2 = false;
                                      controler3 = true;
                                      controler4 = false;
                                    });
                                  },
                                  child: Text("6m")),
                          controler4 == true
                              ? Container(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 3, bottom: 3),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF00AFB9),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: Text(
                                    "January",
                                    style: TextStyle(color: Colors.white),
                                  ))
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      controler1 = false;
                                      controler2 = false;
                                      controler3 = false;
                                      controler4 = true;
                                      ;
                                    });
                                  },
                                  child: Text("january")),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      controler2
                          ? Column(
                              children: [
                                Text(
                                  "Portfolio2",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : controler3
                              ? Column(
                                  children: [
                                    Text(
                                      "Portfolio3",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              : controler4
                                  ? Column(
                                      children: [
                                        Text(
                                          "Portfolio4",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Portfolio",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/Ellipse.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text("Automatic"),
                                              ],
                                            ),
                                            Text("Dec 21 2022"),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/Ellipse.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text("Automatic"),
                                              ],
                                            ),
                                            Text("Dec 21 2022"),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/Ellipse.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text("Automatic"),
                                              ],
                                            ),
                                            Text("Dec 21 2022"),
                                          ],
                                        )
                                      ],
                                    )
                    ],
                  ),
                ),
              ],
            )
          //  statisticnavigationWidget()
          : itempage == "My card"
              ? Text("My card")
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
