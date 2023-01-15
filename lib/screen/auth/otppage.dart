import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    sucessdialogbox() {
      return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Dialog(
              backgroundColor: Colors.transparent,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 230,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "I agree to the Terms of Service and Conditions of Use including consent to electronic communications and I affirm that the information provided is my own.",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 200,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFF00AFB9),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Agree and continue",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 270,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  primary: Colors.red,
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Disgree",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
        // appBar: AppBar(),
        body: ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Enter OTP",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 260,
                    child: Text(
                      "We have just sent you 4 digit code via your email example@gmail.com",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              OTPTextField(
                  controller: otpController,
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 45,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  style: const TextStyle(fontSize: 17),
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  }),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      sucessdialogbox();
                    },
                    child: Container(
                        // width: 200,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Color(0xFF00AFB9),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn’t receive code?",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const signuppage()),
                      // );
                    },
                    child: const Text(
                      "Resend Code",
                      style: TextStyle(fontSize: 14, color: Color(0xFF8E8E8E)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
