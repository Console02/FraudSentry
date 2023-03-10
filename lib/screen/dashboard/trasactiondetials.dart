import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class trasanctionDetails extends StatefulWidget {
  const trasanctionDetails({Key? key}) : super(key: key);

  @override
  State<trasanctionDetails> createState() => _trasanctionDetailsState();
}

class _trasanctionDetailsState extends State<trasanctionDetails> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(right: 5, top: 20, left: 20),
          child: Text(
            "Transaction Details",
            style: TextStyle(color: Colors.black, fontSize: 17),
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
                child: const Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 20,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
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
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text(
                    "Transaction Map",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            height: 240,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.grey),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: SizedBox(
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Billing Address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 200,
                        child: Text(
                            "Precious Davies111, Obafemi Awolowo ikeja Lagos",
                            style: TextStyle(fontSize: 12))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: const [
                      Text("Shipping Address"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "IP Address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 200,
                        child: Text(
                            "123.345.654.56 ,111, Obafemi Awolowo Ikeja Lagos",
                            style: TextStyle(fontSize: 12))),
                  ],
                ),
              ],
            ),
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
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Text(
                      "Transaction Map",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Date/Time",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 200,
                        child: Text("10/10/2023: 23:24pm",
                            style: TextStyle(fontSize: 12))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transaction ID",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 200,
                        child:
                            Text("_RTx4356JY", style: TextStyle(fontSize: 12))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "User ID",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 200,
                        child:
                            Text("AS12345YT", style: TextStyle(fontSize: 12))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Amount",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 200,
                        child: Text("34", style: TextStyle(fontSize: 12))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
