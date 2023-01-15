import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class addaccount extends StatefulWidget {
  const addaccount({Key? key}) : super(key: key);

  @override
  State<addaccount> createState() => _addaccountState();
}

class _addaccountState extends State<addaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Text("Account Name",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
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
                    hintText: 'Enter your account name here',
                    hintStyle: TextStyle(fontSize: 11),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none),
                  ),
                  onChanged: (value) {
                    // inputfullname = value;
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("Account Number",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
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
                    hintText: 'Enter your account number',
                    hintStyle: TextStyle(fontSize: 11),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none),
                  ),
                  onChanged: (value) {
                    // inputfullname = value;
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("Bank Name",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
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
                    hintText: 'Enter your bank name',
                    hintStyle: TextStyle(fontSize: 11),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none),
                  ),
                  onChanged: (value) {
                    // inputfullname = value;
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("Phone Number",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
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
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(fontSize: 11),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none),
                  ),
                  onChanged: (value) {
                    // inputfullname = value;
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("Email Address",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
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
                    hintText: 'Enter your email address',
                    hintStyle: TextStyle(fontSize: 11),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none),
                  ),
                  onChanged: (value) {
                    // inputfullname = value;
                  },
                ),
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 250,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding:
                          const EdgeInsets.only(left: 90, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF00AFB9)),
                        // color: Color(0xFF#3A3939),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          const Text(
                            "Add Account",
                            style: TextStyle(color: Color(0xFF00AFB9)),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
