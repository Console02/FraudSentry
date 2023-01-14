import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class staticspage extends StatefulWidget {
  const staticspage({Key? key}) : super(key: key);

  @override
  State<staticspage> createState() => _staticspageState();
}

class _staticspageState extends State<staticspage> {
  bool controler1 = true;
  bool controler2 = false;
  bool controler3 = false;
  bool controler4 = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                              border: Border.all(color: Colors.grey.shade300)),
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
                              border: Border.all(color: Colors.grey.shade300)),
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
                              border: Border.all(color: Colors.grey.shade300)),
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
                              border: Border.all(color: Colors.grey.shade300)),
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      : controler4
                          ? Column(
                              children: [
                                Text(
                                  "Portfolio4",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Portfolio",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
