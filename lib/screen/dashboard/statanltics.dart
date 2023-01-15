import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

class anylyticsstart extends StatefulWidget {
  const anylyticsstart({Key? key}) : super(key: key);

  @override
  State<anylyticsstart> createState() => _anylyticsstartState();
}

class _anylyticsstartState extends State<anylyticsstart> {
  Map<String, double> dataMap = {
    "Attempted": 5,
    "Declined": 3,
    "Approved": 2,
    // "Ionic": 2,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(right: 5, top: 20, left: 90),
          child: Text(
            "Stats",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
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
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                  size: 20,
                )),
          ),
        ),
        elevation: 0,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       right: 25,
        //       top: 30,
        //     ),
        //     child: Container(
        //         width: 40.0,
        //         height: 40.0,
        //         decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.white,
        //             border: Border.all(color: Colors.grey.shade300)),
        //         child: Icon(
        //           Icons.more_horiz,
        //           color: Colors.black,
        //           size: 20,
        //         )),
        //   )
        // ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Analytics for logins"),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          PieChart(
            dataMap: dataMap,
            chartType: ChartType.ring,
            chartRadius: MediaQuery.of(context).size.width / 1.9,
            legendOptions: const LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendShape: BoxShape.rectangle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: false,
              showChartValues: false,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            // width: 200,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xFF00AFB9),
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
            // alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Fraud Block Tracker",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 25),
            child: SizedBox(
              width: 250,
              child: Text(
                  "Two Suspected access to your account click button below to review if its you or someone impersonating"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: Container(
              width: 180,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFF00AFB9),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              // alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 00,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Review",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
