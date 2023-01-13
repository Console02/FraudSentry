import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

Widget statisticnavigationWidget() {
  bool controler1 = true;
  bool controler2 = false;
  bool controler3 = false;
  bool controler4 = false;
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
                    : Text("Oct to Dec"),
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
                          controler1 = false;
                          controler2 = true;
                          controler3 = false;
                          controler4 = false;
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
                    : Text("6m"),
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
                    : Text("january"),
              ],
            )
          ],
        ),
      )
    ],
  );
}
