import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fraudsentry/screen/dashboard/addnewcard.dart';

class mycardinfo extends StatefulWidget {
  const mycardinfo({Key? key}) : super(key: key);

  @override
  State<mycardinfo> createState() => _mycardinfoState();
}

class _mycardinfoState extends State<mycardinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFF00AFB9),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "X-Card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "VISA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Balance",
                          style: TextStyle(color: Colors.white54, fontSize: 13),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "0.000,00",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "****  **** 2468",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 13),
                            ),
                            Text(
                              "12/24",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromRGBO(226, 91, 28, 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "X-Card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "VISA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Balance",
                          style: TextStyle(color: Colors.white54, fontSize: 13),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "0.000,00",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "****  **** 2468",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 13),
                            ),
                            Text(
                              "12/24",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const addmycard()),
                  );
                },
                child: Container(
                    width: 250,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: const EdgeInsets.only(left: 90, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF00AFB9)),
                      // color: Color(0xFF#3A3939),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: const [
                        Text(
                          "Add Card",
                          style: TextStyle(color: Color(0xFF00AFB9)),
                        ),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
