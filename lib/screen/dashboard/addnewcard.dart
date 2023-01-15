import 'package:flutter/material.dart';

class addmycard extends StatefulWidget {
  const addmycard({Key? key}) : super(key: key);

  @override
  State<addmycard> createState() => _addmycardState();
}

class _addmycardState extends State<addmycard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(right: 5, top: 20, left: 20),
          child: Text(
            "Add New Card",
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
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFF00AFB9),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "MASTERCARD",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Account Number",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "0234 4561 7894 1230",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Acoount Holder",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                Text(
                                  "PRECIOUS DAVIES",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Valid Till",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                Text(
                                  "10/10/2023",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/image 7.png",
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              const Text("Enter the details to add a new card"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Card Number",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          color: Colors.grey.shade200,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      alignment: Alignment.center,
                      child: TextFormField(
                        // controller:
                        //     fullnamecontroller,

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'FullName is required';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          hintText: '******************* 6580',
                          suffixIcon: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/image 7.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          hintStyle: const TextStyle(fontSize: 11),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                        ),
                        onChanged: (value) {
                          // inputfullname = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Card Holder",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          color: Colors.grey.shade200,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      alignment: Alignment.center,
                      child: TextFormField(
                        // controller:
                        //     fullnamecontroller,

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'FullName is required';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          hintText: 'Enter card holder name',
                          hintStyle: TextStyle(fontSize: 11),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                        ),
                        onChanged: (value) {
                          // inputfullname = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "EXP",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 45,
                              width: 170,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  color: Colors.grey.shade200,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              alignment: Alignment.center,
                              child: TextFormField(
                                // controller:
                                //     fullnamecontroller,

                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'FullName is required';
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: Colors.black),
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  hintText: 'MM/YYYY',
                                  hintStyle: TextStyle(fontSize: 11),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide.none),
                                ),
                                onChanged: (value) {
                                  // inputfullname = value;
                                },
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "CVV",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 45,
                              width: 170,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  color: Colors.grey.shade200,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              alignment: Alignment.center,
                              child: TextFormField(
                                // controller:
                                //     fullnamecontroller,

                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'FullName is required';
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: Colors.black),
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  hintText: '000',
                                  hintStyle: TextStyle(fontSize: 11),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide.none),
                                ),
                                onChanged: (value) {
                                  // inputfullname = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  width: 250,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 15),
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
            ],
          )
        ],
      ),
    );
  }

//     Container();
//   }
}







// import 'package:flutter/material.dart';

// Widget addnewcardnavigationWidget() {
//   return
//    ListView(
//     children: [
//       Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Container(
//                 width: 300,
//                 padding: const EdgeInsets.all(20.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(15)),
//                   color: Color(0xFF00AFB9),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "MASTERCARD",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       "Account Number",
//                       style: TextStyle(color: Colors.white, fontSize: 13),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "0234 4561 7894 1230",
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Acoount Holder",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 11),
//                             ),
//                             Text(
//                               "PRECIOUS DAVIES",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               "Valid Till",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 11),
//                             ),
//                             Text(
//                               "10/10/2023",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 11),
//                             ),
//                           ],
//                         ),
//                         Image.asset(
//                           "assets/image 7.png",
//                           width: 30,
//                           height: 30,
//                         ),
//                       ],
//                     ),
//                   ],
//                 )),
//           ),
//           Text("Enter the details to add a new card"),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Card Number",
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   height: 45,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade200),
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.all(Radius.circular(20))),
//                   alignment: Alignment.center,
//                   child: TextFormField(
//                     // controller:
//                     //     fullnamecontroller,

//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'FullName is required';
//                       }
//                       return null;
//                     },
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white70,
//                       hintText: '******************* 6580',
//                       suffixIcon: InkWell(
//                         onTap: () {},
//                         child: Image.asset(
//                           "assets/image 7.png",
//                           width: 30,
//                           height: 30,
//                         ),
//                       ),
//                       hintStyle: TextStyle(fontSize: 11),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                           borderSide: BorderSide.none),
//                     ),
//                     onChanged: (value) {
//                       // inputfullname = value;
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text("Card Holder",
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   height: 45,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade200),
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.all(Radius.circular(20))),
//                   alignment: Alignment.center,
//                   child: TextFormField(
//                     // controller:
//                     //     fullnamecontroller,

//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'FullName is required';
//                       }
//                       return null;
//                     },
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white70,
//                       hintText: 'Enter card holder name',
//                       hintStyle: TextStyle(fontSize: 11),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                           borderSide: BorderSide.none),
//                     ),
//                     onChanged: (value) {
//                       // inputfullname = value;
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "EXP",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           height: 45,
//                           width: 170,
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey.shade200),
//                               color: Colors.grey.shade200,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(20))),
//                           alignment: Alignment.center,
//                           child: TextFormField(
//                             // controller:
//                             //     fullnamecontroller,

//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'FullName is required';
//                               }
//                               return null;
//                             },
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Colors.white70,
//                               hintText: 'MM/YYYY',
//                               hintStyle: TextStyle(fontSize: 11),
//                               border: OutlineInputBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                   borderSide: BorderSide.none),
//                             ),
//                             onChanged: (value) {
//                               // inputfullname = value;
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "CVV",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           height: 45,
//                           width: 170,
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey.shade200),
//                               color: Colors.grey.shade200,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(20))),
//                           alignment: Alignment.center,
//                           child: TextFormField(
//                             // controller:
//                             //     fullnamecontroller,

//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'FullName is required';
//                               }
//                               return null;
//                             },
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Colors.white70,
//                               hintText: '000',
//                               hintStyle: TextStyle(fontSize: 11),
//                               border: OutlineInputBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                   borderSide: BorderSide.none),
//                             ),
//                             onChanged: (value) {
//                               // inputfullname = value;
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//               width: 250,
//               margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
//               padding: const EdgeInsets.only(left: 90, top: 15, bottom: 15),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xFF00AFB9)),
//                 // color: Color(0xFF#3A3939),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(15),
//                 ),
//               ),
//               alignment: Alignment.center,
//               child: Row(
//                 children: [
//                   Text(
//                     "Add Card",
//                     style: TextStyle(color: Color(0xFF00AFB9)),
//                   ),
//                 ],
//               )),
//         ],
//       )
//     ],
//   );
// }
