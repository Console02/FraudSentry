import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/app_button.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class UpgradeAccount extends StatefulWidget {
  const UpgradeAccount({Key? key}) : super(key: key);

  @override
  State<UpgradeAccount> createState() => _UpgradeAccountState();
}

class _UpgradeAccountState extends State<UpgradeAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
            ),
          ),
          title: Text(
            "Upgrade Account",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const InputField(
                  kPadding: 0,
                  labelText: "Account Name",
                  hintText: "Enter your account name here",
                ),
                const InputField(
                  kPadding: 0,
                  labelText: "Account Number",
                  hintText: "Enter your account number",
                ),
                const InputField(
                  kPadding: 0,
                  labelText: "Bank Name",
                  hintText: "Enter your bank name here",
                ),
                const InputField(
                  kPadding: 0,
                  labelText: "Phone Number",
                  hintText: "Enter your phone number here",
                ),
                const InputField(
                  kPadding: 0,
                  labelText: "Email Address",
                  hintText: "Enter your email address here",
                ),
                const InputField(
                  kPadding: 0,
                  labelText: "Card Number",
                  hintText: "0000 0000 0000 0000",
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: const InputField(
                          kPadding: 0,
                          labelText: "EXP",
                          hintText: "MM/YYYY",
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: const InputField(
                          kPadding: 0,
                          labelText: "CVV",
                          hintText: "0000",
                        ),
                      ),
                    ],
                  ),
                ),
                const AppButton(
                  title: "Upgrade account",
                  width: 250,
                  height: 45,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
